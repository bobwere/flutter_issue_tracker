part of 'search_bloc.dart';

@freezed
abstract class SearchEvent with _$SearchEvent {
  const factory SearchEvent.tagChanged({List<String> tag}) = TagChanged;
  const factory SearchEvent.sortByChanged({String sortBy}) = SortByChanged;
  const factory SearchEvent.searchTermChanged({String term}) =
      SearchTermChanged;
  const factory SearchEvent.issueStateChanged({String state}) =
      IssueStateChanged;
  const factory SearchEvent.fetchInitialSearchResults() =
      FetchInitialSearchResults;
  const factory SearchEvent.fetchMoreSearchResults() = FetchMoreSearchResults;
  const factory SearchEvent.fetchAllLabels() = FetchAllLabels;
  const factory SearchEvent.fetchAllLabelsReceived(
      OperationResponse<GFetchAllLabelsData, GFetchAllLabelsVars>
          response) = FetchAllLabelsReceived;
  const factory SearchEvent.fetchMoreSearchResultsReceived(
      OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
          response) = FetchMoreSearchResultsReceived;
  const factory SearchEvent.fetchInitialSearchResultsReceived(
      OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
          response) = FetchInitialSearchResultsReceived;
}
