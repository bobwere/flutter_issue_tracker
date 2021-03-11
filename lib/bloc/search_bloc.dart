import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter_issue_tracker/data/repository/github_repository.dart';
import 'package:flutter_issue_tracker/data/repository/graphql_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ferry/ferry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:rxdart/rxdart.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc(this._githubFacade) : super(SearchState.initial());

  final IGithubFacade _githubFacade;

  StreamSubscription<
          OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>>
      _searchStreamSubscription;
  StreamSubscription<
          OperationResponse<GFetchAllLabelsData, GFetchAllLabelsVars>>
      _labelsStreamSubscription;

  @override
  Stream<Transition<SearchEvent, SearchState>> transformEvents(
      Stream<SearchEvent> events, transitionFn) {
    final stream = events.where((event) =>
        event is! FetchMoreSearchResults && event is! SearchTermChanged);

    final throttleStream =
        events.where((event) => event is FetchMoreSearchResults).throttleTime(
              Duration(seconds: 4),
            );

    final debounceStream =
        events.where((event) => event is SearchTermChanged).debounceTime(
              Duration(milliseconds: 300),
            );

    return super.transformEvents(
        MergeStream([stream, throttleStream, debounceStream]), transitionFn);
  }

  @override
  Stream<SearchState> mapEventToState(SearchEvent event) async* {
    if (event is TagChanged) {
      yield* _mapTagChangedToState(event, state);
    } else if (event is SortByChanged) {
      yield* _mapSortByChangedToState(event, state);
    } else if (event is SearchTermChanged) {
      yield* _mapSearchTermChangedToState(event, state);
    } else if (event is IssueStateChanged) {
      yield* _mapIssueStateChangedToState(event, state);
    } else if (event is FetchInitialSearchResults) {
      yield* _fetchInitialSearchResults(state);
    } else if (event is FetchInitialSearchResultsReceived) {
      yield* _mapInitialSearchResultsReceivedToState(event.response, state);
    } else if (event is FetchMoreSearchResults) {
      yield* _fetchMoreSearchResults(state);
    } else if (event is FetchMoreSearchResultsReceived) {
      yield* _mapMoreSearchResultsReceivedToState(event.response, state);
    } else if (event is FetchAllLabels) {
      yield* _fetchAllLabels(state);
    } else if (event is FetchAllLabelsReceived) {
      yield* _mapFetchAllLabelsReceivedToState(event.response, state);
    }
  }

  Stream<SearchState> _mapTagChangedToState(
      TagChanged event, SearchState state) async* {
    List<String> tags = [];
    for (String tag in event.tag) {
      var newTag = "label:\"$tag\"";
      tags.add(newTag);
    }

    yield state.copyWith.call(label: tags.join());
    add(FetchInitialSearchResults());
  }

  Stream<SearchState> _mapSortByChangedToState(
      SortByChanged event, SearchState state) async* {
    var sort = '';
    switch (event.sortBy) {
      case 'Sort By':
        sort = '';
        break;
      case 'newest':
        sort = 'sort:created-desc';
        break;
      case 'oldest':
        sort = 'sort:created-asc';
        break;
      case 'most commented':
        sort = 'sort:comments-desc';
        break;
      case 'least commented':
        sort = 'sort:comments-asc';
        break;
      case 'recently updated':
        sort = 'sort:updated-desc';
        break;
      case 'least recently updated':
        sort = 'sort:updated-desc';
        break;
    }
    yield state.copyWith.call(sortBy: sort);
    add(FetchInitialSearchResults());
  }

  Stream<SearchState> _mapIssueStateChangedToState(
      IssueStateChanged event, SearchState state) async* {
    var issueStatus = '';
    switch (event.state) {
      case 'Filter By':
        issueStatus = '';
        break;
      case 'open':
        issueStatus = 'is:open';
        break;
      case 'closed':
        issueStatus = 'is:closed';
        break;
      case 'all':
        issueStatus = '';
        break;
      default:
    }
    yield state.copyWith.call(state: issueStatus);
    add(FetchInitialSearchResults());
  }

  Stream<SearchState> _mapSearchTermChangedToState(
      SearchTermChanged event, SearchState state) async* {
    var searchTerm = event.term;
    yield state.copyWith.call(searchTerm: searchTerm);
    add(FetchInitialSearchResults());
  }

  Stream<SearchState> _fetchInitialSearchResults(SearchState state) async* {
    yield state.copyWith.call(
      isFetchingInitial: true,
      errorMessage: '',
      loadMoreErrorMessage: '',
      searchHasNextPage: false,
      searchEndCursor: null,
      searchResults: new BuiltList<GFetchSearchResultsData_search_edges>([]),
    );

    if (state.labels.isEmpty) {
      add(FetchAllLabels());
    }

    var searchQuery =
        "repo:flutter/flutter in:title is:issue ${state.sortBy} ${state.state} ${state.label} ${state.searchTerm}";

    await _searchStreamSubscription?.cancel();

    _searchStreamSubscription =
        _githubFacade.fetchSearchResults(searchQuery: searchQuery).listen(
      (response) async {
        add(FetchInitialSearchResultsReceived(response));
      },
    );
  }

  Stream<SearchState> _fetchAllLabels(SearchState state) async* {
    await _labelsStreamSubscription?.cancel();
    _labelsStreamSubscription = _githubFacade
        .fetchAllLabels(endCursor: state.labelEndCursor)
        .listen((response) {
      add(FetchAllLabelsReceived(response));
    });
  }

  Stream<SearchState> _mapFetchAllLabelsReceivedToState(
      OperationResponse<GFetchAllLabelsData, GFetchAllLabelsVars> response,
      SearchState state) async* {
    List<String> labels = [];

    for (var label in response.data.repository.labels.edges) {
      labels.add(label.node.name);
    }

    if (!response.loading && !response.hasErrors) {
      yield state.copyWith.call(
          labelEndCursor: response.data.repository.labels.pageInfo.endCursor,
          labels: [...state.labels, ...labels],
          labelHasNextPage:
              response.data.repository.labels.pageInfo.hasNextPage);
    }

    if (response.data.repository.labels.pageInfo.hasNextPage) {
      add(FetchAllLabels());
    }
  }

  Stream<SearchState> _mapInitialSearchResultsReceivedToState(
      OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
          response,
      SearchState state) async* {
    if (response.linkException is LinkException) {
      yield state.copyWith.call(
        errorMessage: 'no internet',
        isFetchingInitial: false,
      );
    } else if (!response.loading && !response.hasErrors) {
      yield state.copyWith.call(
        searchResults: response.data.search.edges,
        isFetchingInitial: false,
        searchHasNextPage: response.data.search.pageInfo.hasNextPage,
        searchEndCursor: response.data.search.pageInfo.endCursor,
      );
    }
  }

  Stream<SearchState> _fetchMoreSearchResults(SearchState state) async* {
    yield state.copyWith.call(isFetchingMore: true);

    var searchQuery =
        "repo:flutter/flutter in:title is:issue ${state.sortBy} ${state.state} ${state.label} ${state.searchTerm}";

    await _searchStreamSubscription?.cancel();
    _searchStreamSubscription = _githubFacade
        .fetchSearchResults(
            searchQuery: searchQuery, endCursor: state.searchEndCursor)
        .listen((response) {
      add(FetchMoreSearchResultsReceived(response));
    });
  }

  Stream<SearchState> _mapMoreSearchResultsReceivedToState(
      OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
          response,
      SearchState state) async* {
    yield state.copyWith.call(
      searchResults: new BuiltList<GFetchSearchResultsData_search_edges>(
          [...state.searchResults, ...response.data.search.edges]),
      isFetchingMore: false,
      searchHasNextPage: response.data.search.pageInfo.hasNextPage,
      searchEndCursor: response.data.search.pageInfo.endCursor,
    );
  }

  @override
  Future<void> close() async {
    await _searchStreamSubscription?.cancel();
    await _labelsStreamSubscription?.cancel();

    return super.close();
  }
}
