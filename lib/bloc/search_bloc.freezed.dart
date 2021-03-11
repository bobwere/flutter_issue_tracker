// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SearchEventTearOff {
  const _$SearchEventTearOff();

// ignore: unused_element
  TagChanged tagChanged({List<String> tag}) {
    return TagChanged(
      tag: tag,
    );
  }

// ignore: unused_element
  SortByChanged sortByChanged({String sortBy}) {
    return SortByChanged(
      sortBy: sortBy,
    );
  }

// ignore: unused_element
  SearchTermChanged searchTermChanged({String term}) {
    return SearchTermChanged(
      term: term,
    );
  }

// ignore: unused_element
  IssueStateChanged issueStateChanged({String state}) {
    return IssueStateChanged(
      state: state,
    );
  }

// ignore: unused_element
  FetchInitialSearchResults fetchInitialSearchResults() {
    return const FetchInitialSearchResults();
  }

// ignore: unused_element
  FetchMoreSearchResults fetchMoreSearchResults() {
    return const FetchMoreSearchResults();
  }

// ignore: unused_element
  FetchAllLabels fetchAllLabels() {
    return const FetchAllLabels();
  }

// ignore: unused_element
  FetchAllLabelsReceived fetchAllLabelsReceived(
      OperationResponse<GFetchAllLabelsData, GFetchAllLabelsVars> response) {
    return FetchAllLabelsReceived(
      response,
    );
  }

// ignore: unused_element
  FetchMoreSearchResultsReceived fetchMoreSearchResultsReceived(
      OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
          response) {
    return FetchMoreSearchResultsReceived(
      response,
    );
  }

// ignore: unused_element
  FetchInitialSearchResultsReceived fetchInitialSearchResultsReceived(
      OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
          response) {
    return FetchInitialSearchResultsReceived(
      response,
    );
  }
}

// ignore: unused_element
const $SearchEvent = _$SearchEventTearOff();

mixin _$SearchEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result tagChanged(List<String> tag),
    @required Result sortByChanged(String sortBy),
    @required Result searchTermChanged(String term),
    @required Result issueStateChanged(String state),
    @required Result fetchInitialSearchResults(),
    @required Result fetchMoreSearchResults(),
    @required Result fetchAllLabels(),
    @required
        Result fetchAllLabelsReceived(
            OperationResponse<GFetchAllLabelsData, GFetchAllLabelsVars>
                response),
    @required
        Result fetchMoreSearchResultsReceived(
            OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
                response),
    @required
        Result fetchInitialSearchResultsReceived(
            OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
                response),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result tagChanged(List<String> tag),
    Result sortByChanged(String sortBy),
    Result searchTermChanged(String term),
    Result issueStateChanged(String state),
    Result fetchInitialSearchResults(),
    Result fetchMoreSearchResults(),
    Result fetchAllLabels(),
    Result fetchAllLabelsReceived(
        OperationResponse<GFetchAllLabelsData, GFetchAllLabelsVars> response),
    Result fetchMoreSearchResultsReceived(
        OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
            response),
    Result fetchInitialSearchResultsReceived(
        OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
            response),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result tagChanged(TagChanged value),
    @required Result sortByChanged(SortByChanged value),
    @required Result searchTermChanged(SearchTermChanged value),
    @required Result issueStateChanged(IssueStateChanged value),
    @required Result fetchInitialSearchResults(FetchInitialSearchResults value),
    @required Result fetchMoreSearchResults(FetchMoreSearchResults value),
    @required Result fetchAllLabels(FetchAllLabels value),
    @required Result fetchAllLabelsReceived(FetchAllLabelsReceived value),
    @required
        Result fetchMoreSearchResultsReceived(
            FetchMoreSearchResultsReceived value),
    @required
        Result fetchInitialSearchResultsReceived(
            FetchInitialSearchResultsReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result tagChanged(TagChanged value),
    Result sortByChanged(SortByChanged value),
    Result searchTermChanged(SearchTermChanged value),
    Result issueStateChanged(IssueStateChanged value),
    Result fetchInitialSearchResults(FetchInitialSearchResults value),
    Result fetchMoreSearchResults(FetchMoreSearchResults value),
    Result fetchAllLabels(FetchAllLabels value),
    Result fetchAllLabelsReceived(FetchAllLabelsReceived value),
    Result fetchMoreSearchResultsReceived(FetchMoreSearchResultsReceived value),
    Result fetchInitialSearchResultsReceived(
        FetchInitialSearchResultsReceived value),
    @required Result orElse(),
  });
}

abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
}

class _$SearchEventCopyWithImpl<$Res> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  final SearchEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEvent) _then;
}

abstract class $TagChangedCopyWith<$Res> {
  factory $TagChangedCopyWith(
          TagChanged value, $Res Function(TagChanged) then) =
      _$TagChangedCopyWithImpl<$Res>;
  $Res call({List<String> tag});
}

class _$TagChangedCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements $TagChangedCopyWith<$Res> {
  _$TagChangedCopyWithImpl(TagChanged _value, $Res Function(TagChanged) _then)
      : super(_value, (v) => _then(v as TagChanged));

  @override
  TagChanged get _value => super._value as TagChanged;

  @override
  $Res call({
    Object tag = freezed,
  }) {
    return _then(TagChanged(
      tag: tag == freezed ? _value.tag : tag as List<String>,
    ));
  }
}

class _$TagChanged implements TagChanged {
  const _$TagChanged({this.tag});

  @override
  final List<String> tag;

  @override
  String toString() {
    return 'SearchEvent.tagChanged(tag: $tag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TagChanged &&
            (identical(other.tag, tag) ||
                const DeepCollectionEquality().equals(other.tag, tag)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tag);

  @override
  $TagChangedCopyWith<TagChanged> get copyWith =>
      _$TagChangedCopyWithImpl<TagChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result tagChanged(List<String> tag),
    @required Result sortByChanged(String sortBy),
    @required Result searchTermChanged(String term),
    @required Result issueStateChanged(String state),
    @required Result fetchInitialSearchResults(),
    @required Result fetchMoreSearchResults(),
    @required Result fetchAllLabels(),
    @required
        Result fetchAllLabelsReceived(
            OperationResponse<GFetchAllLabelsData, GFetchAllLabelsVars>
                response),
    @required
        Result fetchMoreSearchResultsReceived(
            OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
                response),
    @required
        Result fetchInitialSearchResultsReceived(
            OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
                response),
  }) {
    assert(tagChanged != null);
    assert(sortByChanged != null);
    assert(searchTermChanged != null);
    assert(issueStateChanged != null);
    assert(fetchInitialSearchResults != null);
    assert(fetchMoreSearchResults != null);
    assert(fetchAllLabels != null);
    assert(fetchAllLabelsReceived != null);
    assert(fetchMoreSearchResultsReceived != null);
    assert(fetchInitialSearchResultsReceived != null);
    return tagChanged(tag);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result tagChanged(List<String> tag),
    Result sortByChanged(String sortBy),
    Result searchTermChanged(String term),
    Result issueStateChanged(String state),
    Result fetchInitialSearchResults(),
    Result fetchMoreSearchResults(),
    Result fetchAllLabels(),
    Result fetchAllLabelsReceived(
        OperationResponse<GFetchAllLabelsData, GFetchAllLabelsVars> response),
    Result fetchMoreSearchResultsReceived(
        OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
            response),
    Result fetchInitialSearchResultsReceived(
        OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
            response),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (tagChanged != null) {
      return tagChanged(tag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result tagChanged(TagChanged value),
    @required Result sortByChanged(SortByChanged value),
    @required Result searchTermChanged(SearchTermChanged value),
    @required Result issueStateChanged(IssueStateChanged value),
    @required Result fetchInitialSearchResults(FetchInitialSearchResults value),
    @required Result fetchMoreSearchResults(FetchMoreSearchResults value),
    @required Result fetchAllLabels(FetchAllLabels value),
    @required Result fetchAllLabelsReceived(FetchAllLabelsReceived value),
    @required
        Result fetchMoreSearchResultsReceived(
            FetchMoreSearchResultsReceived value),
    @required
        Result fetchInitialSearchResultsReceived(
            FetchInitialSearchResultsReceived value),
  }) {
    assert(tagChanged != null);
    assert(sortByChanged != null);
    assert(searchTermChanged != null);
    assert(issueStateChanged != null);
    assert(fetchInitialSearchResults != null);
    assert(fetchMoreSearchResults != null);
    assert(fetchAllLabels != null);
    assert(fetchAllLabelsReceived != null);
    assert(fetchMoreSearchResultsReceived != null);
    assert(fetchInitialSearchResultsReceived != null);
    return tagChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result tagChanged(TagChanged value),
    Result sortByChanged(SortByChanged value),
    Result searchTermChanged(SearchTermChanged value),
    Result issueStateChanged(IssueStateChanged value),
    Result fetchInitialSearchResults(FetchInitialSearchResults value),
    Result fetchMoreSearchResults(FetchMoreSearchResults value),
    Result fetchAllLabels(FetchAllLabels value),
    Result fetchAllLabelsReceived(FetchAllLabelsReceived value),
    Result fetchMoreSearchResultsReceived(FetchMoreSearchResultsReceived value),
    Result fetchInitialSearchResultsReceived(
        FetchInitialSearchResultsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (tagChanged != null) {
      return tagChanged(this);
    }
    return orElse();
  }
}

abstract class TagChanged implements SearchEvent {
  const factory TagChanged({List<String> tag}) = _$TagChanged;

  List<String> get tag;
  $TagChangedCopyWith<TagChanged> get copyWith;
}

abstract class $SortByChangedCopyWith<$Res> {
  factory $SortByChangedCopyWith(
          SortByChanged value, $Res Function(SortByChanged) then) =
      _$SortByChangedCopyWithImpl<$Res>;
  $Res call({String sortBy});
}

class _$SortByChangedCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements $SortByChangedCopyWith<$Res> {
  _$SortByChangedCopyWithImpl(
      SortByChanged _value, $Res Function(SortByChanged) _then)
      : super(_value, (v) => _then(v as SortByChanged));

  @override
  SortByChanged get _value => super._value as SortByChanged;

  @override
  $Res call({
    Object sortBy = freezed,
  }) {
    return _then(SortByChanged(
      sortBy: sortBy == freezed ? _value.sortBy : sortBy as String,
    ));
  }
}

class _$SortByChanged implements SortByChanged {
  const _$SortByChanged({this.sortBy});

  @override
  final String sortBy;

  @override
  String toString() {
    return 'SearchEvent.sortByChanged(sortBy: $sortBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SortByChanged &&
            (identical(other.sortBy, sortBy) ||
                const DeepCollectionEquality().equals(other.sortBy, sortBy)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sortBy);

  @override
  $SortByChangedCopyWith<SortByChanged> get copyWith =>
      _$SortByChangedCopyWithImpl<SortByChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result tagChanged(List<String> tag),
    @required Result sortByChanged(String sortBy),
    @required Result searchTermChanged(String term),
    @required Result issueStateChanged(String state),
    @required Result fetchInitialSearchResults(),
    @required Result fetchMoreSearchResults(),
    @required Result fetchAllLabels(),
    @required
        Result fetchAllLabelsReceived(
            OperationResponse<GFetchAllLabelsData, GFetchAllLabelsVars>
                response),
    @required
        Result fetchMoreSearchResultsReceived(
            OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
                response),
    @required
        Result fetchInitialSearchResultsReceived(
            OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
                response),
  }) {
    assert(tagChanged != null);
    assert(sortByChanged != null);
    assert(searchTermChanged != null);
    assert(issueStateChanged != null);
    assert(fetchInitialSearchResults != null);
    assert(fetchMoreSearchResults != null);
    assert(fetchAllLabels != null);
    assert(fetchAllLabelsReceived != null);
    assert(fetchMoreSearchResultsReceived != null);
    assert(fetchInitialSearchResultsReceived != null);
    return sortByChanged(sortBy);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result tagChanged(List<String> tag),
    Result sortByChanged(String sortBy),
    Result searchTermChanged(String term),
    Result issueStateChanged(String state),
    Result fetchInitialSearchResults(),
    Result fetchMoreSearchResults(),
    Result fetchAllLabels(),
    Result fetchAllLabelsReceived(
        OperationResponse<GFetchAllLabelsData, GFetchAllLabelsVars> response),
    Result fetchMoreSearchResultsReceived(
        OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
            response),
    Result fetchInitialSearchResultsReceived(
        OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
            response),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sortByChanged != null) {
      return sortByChanged(sortBy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result tagChanged(TagChanged value),
    @required Result sortByChanged(SortByChanged value),
    @required Result searchTermChanged(SearchTermChanged value),
    @required Result issueStateChanged(IssueStateChanged value),
    @required Result fetchInitialSearchResults(FetchInitialSearchResults value),
    @required Result fetchMoreSearchResults(FetchMoreSearchResults value),
    @required Result fetchAllLabels(FetchAllLabels value),
    @required Result fetchAllLabelsReceived(FetchAllLabelsReceived value),
    @required
        Result fetchMoreSearchResultsReceived(
            FetchMoreSearchResultsReceived value),
    @required
        Result fetchInitialSearchResultsReceived(
            FetchInitialSearchResultsReceived value),
  }) {
    assert(tagChanged != null);
    assert(sortByChanged != null);
    assert(searchTermChanged != null);
    assert(issueStateChanged != null);
    assert(fetchInitialSearchResults != null);
    assert(fetchMoreSearchResults != null);
    assert(fetchAllLabels != null);
    assert(fetchAllLabelsReceived != null);
    assert(fetchMoreSearchResultsReceived != null);
    assert(fetchInitialSearchResultsReceived != null);
    return sortByChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result tagChanged(TagChanged value),
    Result sortByChanged(SortByChanged value),
    Result searchTermChanged(SearchTermChanged value),
    Result issueStateChanged(IssueStateChanged value),
    Result fetchInitialSearchResults(FetchInitialSearchResults value),
    Result fetchMoreSearchResults(FetchMoreSearchResults value),
    Result fetchAllLabels(FetchAllLabels value),
    Result fetchAllLabelsReceived(FetchAllLabelsReceived value),
    Result fetchMoreSearchResultsReceived(FetchMoreSearchResultsReceived value),
    Result fetchInitialSearchResultsReceived(
        FetchInitialSearchResultsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sortByChanged != null) {
      return sortByChanged(this);
    }
    return orElse();
  }
}

abstract class SortByChanged implements SearchEvent {
  const factory SortByChanged({String sortBy}) = _$SortByChanged;

  String get sortBy;
  $SortByChangedCopyWith<SortByChanged> get copyWith;
}

abstract class $SearchTermChangedCopyWith<$Res> {
  factory $SearchTermChangedCopyWith(
          SearchTermChanged value, $Res Function(SearchTermChanged) then) =
      _$SearchTermChangedCopyWithImpl<$Res>;
  $Res call({String term});
}

class _$SearchTermChangedCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements $SearchTermChangedCopyWith<$Res> {
  _$SearchTermChangedCopyWithImpl(
      SearchTermChanged _value, $Res Function(SearchTermChanged) _then)
      : super(_value, (v) => _then(v as SearchTermChanged));

  @override
  SearchTermChanged get _value => super._value as SearchTermChanged;

  @override
  $Res call({
    Object term = freezed,
  }) {
    return _then(SearchTermChanged(
      term: term == freezed ? _value.term : term as String,
    ));
  }
}

class _$SearchTermChanged implements SearchTermChanged {
  const _$SearchTermChanged({this.term});

  @override
  final String term;

  @override
  String toString() {
    return 'SearchEvent.searchTermChanged(term: $term)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchTermChanged &&
            (identical(other.term, term) ||
                const DeepCollectionEquality().equals(other.term, term)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(term);

  @override
  $SearchTermChangedCopyWith<SearchTermChanged> get copyWith =>
      _$SearchTermChangedCopyWithImpl<SearchTermChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result tagChanged(List<String> tag),
    @required Result sortByChanged(String sortBy),
    @required Result searchTermChanged(String term),
    @required Result issueStateChanged(String state),
    @required Result fetchInitialSearchResults(),
    @required Result fetchMoreSearchResults(),
    @required Result fetchAllLabels(),
    @required
        Result fetchAllLabelsReceived(
            OperationResponse<GFetchAllLabelsData, GFetchAllLabelsVars>
                response),
    @required
        Result fetchMoreSearchResultsReceived(
            OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
                response),
    @required
        Result fetchInitialSearchResultsReceived(
            OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
                response),
  }) {
    assert(tagChanged != null);
    assert(sortByChanged != null);
    assert(searchTermChanged != null);
    assert(issueStateChanged != null);
    assert(fetchInitialSearchResults != null);
    assert(fetchMoreSearchResults != null);
    assert(fetchAllLabels != null);
    assert(fetchAllLabelsReceived != null);
    assert(fetchMoreSearchResultsReceived != null);
    assert(fetchInitialSearchResultsReceived != null);
    return searchTermChanged(term);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result tagChanged(List<String> tag),
    Result sortByChanged(String sortBy),
    Result searchTermChanged(String term),
    Result issueStateChanged(String state),
    Result fetchInitialSearchResults(),
    Result fetchMoreSearchResults(),
    Result fetchAllLabels(),
    Result fetchAllLabelsReceived(
        OperationResponse<GFetchAllLabelsData, GFetchAllLabelsVars> response),
    Result fetchMoreSearchResultsReceived(
        OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
            response),
    Result fetchInitialSearchResultsReceived(
        OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
            response),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchTermChanged != null) {
      return searchTermChanged(term);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result tagChanged(TagChanged value),
    @required Result sortByChanged(SortByChanged value),
    @required Result searchTermChanged(SearchTermChanged value),
    @required Result issueStateChanged(IssueStateChanged value),
    @required Result fetchInitialSearchResults(FetchInitialSearchResults value),
    @required Result fetchMoreSearchResults(FetchMoreSearchResults value),
    @required Result fetchAllLabels(FetchAllLabels value),
    @required Result fetchAllLabelsReceived(FetchAllLabelsReceived value),
    @required
        Result fetchMoreSearchResultsReceived(
            FetchMoreSearchResultsReceived value),
    @required
        Result fetchInitialSearchResultsReceived(
            FetchInitialSearchResultsReceived value),
  }) {
    assert(tagChanged != null);
    assert(sortByChanged != null);
    assert(searchTermChanged != null);
    assert(issueStateChanged != null);
    assert(fetchInitialSearchResults != null);
    assert(fetchMoreSearchResults != null);
    assert(fetchAllLabels != null);
    assert(fetchAllLabelsReceived != null);
    assert(fetchMoreSearchResultsReceived != null);
    assert(fetchInitialSearchResultsReceived != null);
    return searchTermChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result tagChanged(TagChanged value),
    Result sortByChanged(SortByChanged value),
    Result searchTermChanged(SearchTermChanged value),
    Result issueStateChanged(IssueStateChanged value),
    Result fetchInitialSearchResults(FetchInitialSearchResults value),
    Result fetchMoreSearchResults(FetchMoreSearchResults value),
    Result fetchAllLabels(FetchAllLabels value),
    Result fetchAllLabelsReceived(FetchAllLabelsReceived value),
    Result fetchMoreSearchResultsReceived(FetchMoreSearchResultsReceived value),
    Result fetchInitialSearchResultsReceived(
        FetchInitialSearchResultsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchTermChanged != null) {
      return searchTermChanged(this);
    }
    return orElse();
  }
}

abstract class SearchTermChanged implements SearchEvent {
  const factory SearchTermChanged({String term}) = _$SearchTermChanged;

  String get term;
  $SearchTermChangedCopyWith<SearchTermChanged> get copyWith;
}

abstract class $IssueStateChangedCopyWith<$Res> {
  factory $IssueStateChangedCopyWith(
          IssueStateChanged value, $Res Function(IssueStateChanged) then) =
      _$IssueStateChangedCopyWithImpl<$Res>;
  $Res call({String state});
}

class _$IssueStateChangedCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements $IssueStateChangedCopyWith<$Res> {
  _$IssueStateChangedCopyWithImpl(
      IssueStateChanged _value, $Res Function(IssueStateChanged) _then)
      : super(_value, (v) => _then(v as IssueStateChanged));

  @override
  IssueStateChanged get _value => super._value as IssueStateChanged;

  @override
  $Res call({
    Object state = freezed,
  }) {
    return _then(IssueStateChanged(
      state: state == freezed ? _value.state : state as String,
    ));
  }
}

class _$IssueStateChanged implements IssueStateChanged {
  const _$IssueStateChanged({this.state});

  @override
  final String state;

  @override
  String toString() {
    return 'SearchEvent.issueStateChanged(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IssueStateChanged &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(state);

  @override
  $IssueStateChangedCopyWith<IssueStateChanged> get copyWith =>
      _$IssueStateChangedCopyWithImpl<IssueStateChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result tagChanged(List<String> tag),
    @required Result sortByChanged(String sortBy),
    @required Result searchTermChanged(String term),
    @required Result issueStateChanged(String state),
    @required Result fetchInitialSearchResults(),
    @required Result fetchMoreSearchResults(),
    @required Result fetchAllLabels(),
    @required
        Result fetchAllLabelsReceived(
            OperationResponse<GFetchAllLabelsData, GFetchAllLabelsVars>
                response),
    @required
        Result fetchMoreSearchResultsReceived(
            OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
                response),
    @required
        Result fetchInitialSearchResultsReceived(
            OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
                response),
  }) {
    assert(tagChanged != null);
    assert(sortByChanged != null);
    assert(searchTermChanged != null);
    assert(issueStateChanged != null);
    assert(fetchInitialSearchResults != null);
    assert(fetchMoreSearchResults != null);
    assert(fetchAllLabels != null);
    assert(fetchAllLabelsReceived != null);
    assert(fetchMoreSearchResultsReceived != null);
    assert(fetchInitialSearchResultsReceived != null);
    return issueStateChanged(state);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result tagChanged(List<String> tag),
    Result sortByChanged(String sortBy),
    Result searchTermChanged(String term),
    Result issueStateChanged(String state),
    Result fetchInitialSearchResults(),
    Result fetchMoreSearchResults(),
    Result fetchAllLabels(),
    Result fetchAllLabelsReceived(
        OperationResponse<GFetchAllLabelsData, GFetchAllLabelsVars> response),
    Result fetchMoreSearchResultsReceived(
        OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
            response),
    Result fetchInitialSearchResultsReceived(
        OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
            response),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (issueStateChanged != null) {
      return issueStateChanged(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result tagChanged(TagChanged value),
    @required Result sortByChanged(SortByChanged value),
    @required Result searchTermChanged(SearchTermChanged value),
    @required Result issueStateChanged(IssueStateChanged value),
    @required Result fetchInitialSearchResults(FetchInitialSearchResults value),
    @required Result fetchMoreSearchResults(FetchMoreSearchResults value),
    @required Result fetchAllLabels(FetchAllLabels value),
    @required Result fetchAllLabelsReceived(FetchAllLabelsReceived value),
    @required
        Result fetchMoreSearchResultsReceived(
            FetchMoreSearchResultsReceived value),
    @required
        Result fetchInitialSearchResultsReceived(
            FetchInitialSearchResultsReceived value),
  }) {
    assert(tagChanged != null);
    assert(sortByChanged != null);
    assert(searchTermChanged != null);
    assert(issueStateChanged != null);
    assert(fetchInitialSearchResults != null);
    assert(fetchMoreSearchResults != null);
    assert(fetchAllLabels != null);
    assert(fetchAllLabelsReceived != null);
    assert(fetchMoreSearchResultsReceived != null);
    assert(fetchInitialSearchResultsReceived != null);
    return issueStateChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result tagChanged(TagChanged value),
    Result sortByChanged(SortByChanged value),
    Result searchTermChanged(SearchTermChanged value),
    Result issueStateChanged(IssueStateChanged value),
    Result fetchInitialSearchResults(FetchInitialSearchResults value),
    Result fetchMoreSearchResults(FetchMoreSearchResults value),
    Result fetchAllLabels(FetchAllLabels value),
    Result fetchAllLabelsReceived(FetchAllLabelsReceived value),
    Result fetchMoreSearchResultsReceived(FetchMoreSearchResultsReceived value),
    Result fetchInitialSearchResultsReceived(
        FetchInitialSearchResultsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (issueStateChanged != null) {
      return issueStateChanged(this);
    }
    return orElse();
  }
}

abstract class IssueStateChanged implements SearchEvent {
  const factory IssueStateChanged({String state}) = _$IssueStateChanged;

  String get state;
  $IssueStateChangedCopyWith<IssueStateChanged> get copyWith;
}

abstract class $FetchInitialSearchResultsCopyWith<$Res> {
  factory $FetchInitialSearchResultsCopyWith(FetchInitialSearchResults value,
          $Res Function(FetchInitialSearchResults) then) =
      _$FetchInitialSearchResultsCopyWithImpl<$Res>;
}

class _$FetchInitialSearchResultsCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements $FetchInitialSearchResultsCopyWith<$Res> {
  _$FetchInitialSearchResultsCopyWithImpl(FetchInitialSearchResults _value,
      $Res Function(FetchInitialSearchResults) _then)
      : super(_value, (v) => _then(v as FetchInitialSearchResults));

  @override
  FetchInitialSearchResults get _value =>
      super._value as FetchInitialSearchResults;
}

class _$FetchInitialSearchResults implements FetchInitialSearchResults {
  const _$FetchInitialSearchResults();

  @override
  String toString() {
    return 'SearchEvent.fetchInitialSearchResults()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchInitialSearchResults);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result tagChanged(List<String> tag),
    @required Result sortByChanged(String sortBy),
    @required Result searchTermChanged(String term),
    @required Result issueStateChanged(String state),
    @required Result fetchInitialSearchResults(),
    @required Result fetchMoreSearchResults(),
    @required Result fetchAllLabels(),
    @required
        Result fetchAllLabelsReceived(
            OperationResponse<GFetchAllLabelsData, GFetchAllLabelsVars>
                response),
    @required
        Result fetchMoreSearchResultsReceived(
            OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
                response),
    @required
        Result fetchInitialSearchResultsReceived(
            OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
                response),
  }) {
    assert(tagChanged != null);
    assert(sortByChanged != null);
    assert(searchTermChanged != null);
    assert(issueStateChanged != null);
    assert(fetchInitialSearchResults != null);
    assert(fetchMoreSearchResults != null);
    assert(fetchAllLabels != null);
    assert(fetchAllLabelsReceived != null);
    assert(fetchMoreSearchResultsReceived != null);
    assert(fetchInitialSearchResultsReceived != null);
    return fetchInitialSearchResults();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result tagChanged(List<String> tag),
    Result sortByChanged(String sortBy),
    Result searchTermChanged(String term),
    Result issueStateChanged(String state),
    Result fetchInitialSearchResults(),
    Result fetchMoreSearchResults(),
    Result fetchAllLabels(),
    Result fetchAllLabelsReceived(
        OperationResponse<GFetchAllLabelsData, GFetchAllLabelsVars> response),
    Result fetchMoreSearchResultsReceived(
        OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
            response),
    Result fetchInitialSearchResultsReceived(
        OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
            response),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchInitialSearchResults != null) {
      return fetchInitialSearchResults();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result tagChanged(TagChanged value),
    @required Result sortByChanged(SortByChanged value),
    @required Result searchTermChanged(SearchTermChanged value),
    @required Result issueStateChanged(IssueStateChanged value),
    @required Result fetchInitialSearchResults(FetchInitialSearchResults value),
    @required Result fetchMoreSearchResults(FetchMoreSearchResults value),
    @required Result fetchAllLabels(FetchAllLabels value),
    @required Result fetchAllLabelsReceived(FetchAllLabelsReceived value),
    @required
        Result fetchMoreSearchResultsReceived(
            FetchMoreSearchResultsReceived value),
    @required
        Result fetchInitialSearchResultsReceived(
            FetchInitialSearchResultsReceived value),
  }) {
    assert(tagChanged != null);
    assert(sortByChanged != null);
    assert(searchTermChanged != null);
    assert(issueStateChanged != null);
    assert(fetchInitialSearchResults != null);
    assert(fetchMoreSearchResults != null);
    assert(fetchAllLabels != null);
    assert(fetchAllLabelsReceived != null);
    assert(fetchMoreSearchResultsReceived != null);
    assert(fetchInitialSearchResultsReceived != null);
    return fetchInitialSearchResults(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result tagChanged(TagChanged value),
    Result sortByChanged(SortByChanged value),
    Result searchTermChanged(SearchTermChanged value),
    Result issueStateChanged(IssueStateChanged value),
    Result fetchInitialSearchResults(FetchInitialSearchResults value),
    Result fetchMoreSearchResults(FetchMoreSearchResults value),
    Result fetchAllLabels(FetchAllLabels value),
    Result fetchAllLabelsReceived(FetchAllLabelsReceived value),
    Result fetchMoreSearchResultsReceived(FetchMoreSearchResultsReceived value),
    Result fetchInitialSearchResultsReceived(
        FetchInitialSearchResultsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchInitialSearchResults != null) {
      return fetchInitialSearchResults(this);
    }
    return orElse();
  }
}

abstract class FetchInitialSearchResults implements SearchEvent {
  const factory FetchInitialSearchResults() = _$FetchInitialSearchResults;
}

abstract class $FetchMoreSearchResultsCopyWith<$Res> {
  factory $FetchMoreSearchResultsCopyWith(FetchMoreSearchResults value,
          $Res Function(FetchMoreSearchResults) then) =
      _$FetchMoreSearchResultsCopyWithImpl<$Res>;
}

class _$FetchMoreSearchResultsCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements $FetchMoreSearchResultsCopyWith<$Res> {
  _$FetchMoreSearchResultsCopyWithImpl(FetchMoreSearchResults _value,
      $Res Function(FetchMoreSearchResults) _then)
      : super(_value, (v) => _then(v as FetchMoreSearchResults));

  @override
  FetchMoreSearchResults get _value => super._value as FetchMoreSearchResults;
}

class _$FetchMoreSearchResults implements FetchMoreSearchResults {
  const _$FetchMoreSearchResults();

  @override
  String toString() {
    return 'SearchEvent.fetchMoreSearchResults()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchMoreSearchResults);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result tagChanged(List<String> tag),
    @required Result sortByChanged(String sortBy),
    @required Result searchTermChanged(String term),
    @required Result issueStateChanged(String state),
    @required Result fetchInitialSearchResults(),
    @required Result fetchMoreSearchResults(),
    @required Result fetchAllLabels(),
    @required
        Result fetchAllLabelsReceived(
            OperationResponse<GFetchAllLabelsData, GFetchAllLabelsVars>
                response),
    @required
        Result fetchMoreSearchResultsReceived(
            OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
                response),
    @required
        Result fetchInitialSearchResultsReceived(
            OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
                response),
  }) {
    assert(tagChanged != null);
    assert(sortByChanged != null);
    assert(searchTermChanged != null);
    assert(issueStateChanged != null);
    assert(fetchInitialSearchResults != null);
    assert(fetchMoreSearchResults != null);
    assert(fetchAllLabels != null);
    assert(fetchAllLabelsReceived != null);
    assert(fetchMoreSearchResultsReceived != null);
    assert(fetchInitialSearchResultsReceived != null);
    return fetchMoreSearchResults();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result tagChanged(List<String> tag),
    Result sortByChanged(String sortBy),
    Result searchTermChanged(String term),
    Result issueStateChanged(String state),
    Result fetchInitialSearchResults(),
    Result fetchMoreSearchResults(),
    Result fetchAllLabels(),
    Result fetchAllLabelsReceived(
        OperationResponse<GFetchAllLabelsData, GFetchAllLabelsVars> response),
    Result fetchMoreSearchResultsReceived(
        OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
            response),
    Result fetchInitialSearchResultsReceived(
        OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
            response),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchMoreSearchResults != null) {
      return fetchMoreSearchResults();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result tagChanged(TagChanged value),
    @required Result sortByChanged(SortByChanged value),
    @required Result searchTermChanged(SearchTermChanged value),
    @required Result issueStateChanged(IssueStateChanged value),
    @required Result fetchInitialSearchResults(FetchInitialSearchResults value),
    @required Result fetchMoreSearchResults(FetchMoreSearchResults value),
    @required Result fetchAllLabels(FetchAllLabels value),
    @required Result fetchAllLabelsReceived(FetchAllLabelsReceived value),
    @required
        Result fetchMoreSearchResultsReceived(
            FetchMoreSearchResultsReceived value),
    @required
        Result fetchInitialSearchResultsReceived(
            FetchInitialSearchResultsReceived value),
  }) {
    assert(tagChanged != null);
    assert(sortByChanged != null);
    assert(searchTermChanged != null);
    assert(issueStateChanged != null);
    assert(fetchInitialSearchResults != null);
    assert(fetchMoreSearchResults != null);
    assert(fetchAllLabels != null);
    assert(fetchAllLabelsReceived != null);
    assert(fetchMoreSearchResultsReceived != null);
    assert(fetchInitialSearchResultsReceived != null);
    return fetchMoreSearchResults(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result tagChanged(TagChanged value),
    Result sortByChanged(SortByChanged value),
    Result searchTermChanged(SearchTermChanged value),
    Result issueStateChanged(IssueStateChanged value),
    Result fetchInitialSearchResults(FetchInitialSearchResults value),
    Result fetchMoreSearchResults(FetchMoreSearchResults value),
    Result fetchAllLabels(FetchAllLabels value),
    Result fetchAllLabelsReceived(FetchAllLabelsReceived value),
    Result fetchMoreSearchResultsReceived(FetchMoreSearchResultsReceived value),
    Result fetchInitialSearchResultsReceived(
        FetchInitialSearchResultsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchMoreSearchResults != null) {
      return fetchMoreSearchResults(this);
    }
    return orElse();
  }
}

abstract class FetchMoreSearchResults implements SearchEvent {
  const factory FetchMoreSearchResults() = _$FetchMoreSearchResults;
}

abstract class $FetchAllLabelsCopyWith<$Res> {
  factory $FetchAllLabelsCopyWith(
          FetchAllLabels value, $Res Function(FetchAllLabels) then) =
      _$FetchAllLabelsCopyWithImpl<$Res>;
}

class _$FetchAllLabelsCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements $FetchAllLabelsCopyWith<$Res> {
  _$FetchAllLabelsCopyWithImpl(
      FetchAllLabels _value, $Res Function(FetchAllLabels) _then)
      : super(_value, (v) => _then(v as FetchAllLabels));

  @override
  FetchAllLabels get _value => super._value as FetchAllLabels;
}

class _$FetchAllLabels implements FetchAllLabels {
  const _$FetchAllLabels();

  @override
  String toString() {
    return 'SearchEvent.fetchAllLabels()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchAllLabels);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result tagChanged(List<String> tag),
    @required Result sortByChanged(String sortBy),
    @required Result searchTermChanged(String term),
    @required Result issueStateChanged(String state),
    @required Result fetchInitialSearchResults(),
    @required Result fetchMoreSearchResults(),
    @required Result fetchAllLabels(),
    @required
        Result fetchAllLabelsReceived(
            OperationResponse<GFetchAllLabelsData, GFetchAllLabelsVars>
                response),
    @required
        Result fetchMoreSearchResultsReceived(
            OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
                response),
    @required
        Result fetchInitialSearchResultsReceived(
            OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
                response),
  }) {
    assert(tagChanged != null);
    assert(sortByChanged != null);
    assert(searchTermChanged != null);
    assert(issueStateChanged != null);
    assert(fetchInitialSearchResults != null);
    assert(fetchMoreSearchResults != null);
    assert(fetchAllLabels != null);
    assert(fetchAllLabelsReceived != null);
    assert(fetchMoreSearchResultsReceived != null);
    assert(fetchInitialSearchResultsReceived != null);
    return fetchAllLabels();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result tagChanged(List<String> tag),
    Result sortByChanged(String sortBy),
    Result searchTermChanged(String term),
    Result issueStateChanged(String state),
    Result fetchInitialSearchResults(),
    Result fetchMoreSearchResults(),
    Result fetchAllLabels(),
    Result fetchAllLabelsReceived(
        OperationResponse<GFetchAllLabelsData, GFetchAllLabelsVars> response),
    Result fetchMoreSearchResultsReceived(
        OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
            response),
    Result fetchInitialSearchResultsReceived(
        OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
            response),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchAllLabels != null) {
      return fetchAllLabels();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result tagChanged(TagChanged value),
    @required Result sortByChanged(SortByChanged value),
    @required Result searchTermChanged(SearchTermChanged value),
    @required Result issueStateChanged(IssueStateChanged value),
    @required Result fetchInitialSearchResults(FetchInitialSearchResults value),
    @required Result fetchMoreSearchResults(FetchMoreSearchResults value),
    @required Result fetchAllLabels(FetchAllLabels value),
    @required Result fetchAllLabelsReceived(FetchAllLabelsReceived value),
    @required
        Result fetchMoreSearchResultsReceived(
            FetchMoreSearchResultsReceived value),
    @required
        Result fetchInitialSearchResultsReceived(
            FetchInitialSearchResultsReceived value),
  }) {
    assert(tagChanged != null);
    assert(sortByChanged != null);
    assert(searchTermChanged != null);
    assert(issueStateChanged != null);
    assert(fetchInitialSearchResults != null);
    assert(fetchMoreSearchResults != null);
    assert(fetchAllLabels != null);
    assert(fetchAllLabelsReceived != null);
    assert(fetchMoreSearchResultsReceived != null);
    assert(fetchInitialSearchResultsReceived != null);
    return fetchAllLabels(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result tagChanged(TagChanged value),
    Result sortByChanged(SortByChanged value),
    Result searchTermChanged(SearchTermChanged value),
    Result issueStateChanged(IssueStateChanged value),
    Result fetchInitialSearchResults(FetchInitialSearchResults value),
    Result fetchMoreSearchResults(FetchMoreSearchResults value),
    Result fetchAllLabels(FetchAllLabels value),
    Result fetchAllLabelsReceived(FetchAllLabelsReceived value),
    Result fetchMoreSearchResultsReceived(FetchMoreSearchResultsReceived value),
    Result fetchInitialSearchResultsReceived(
        FetchInitialSearchResultsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchAllLabels != null) {
      return fetchAllLabels(this);
    }
    return orElse();
  }
}

abstract class FetchAllLabels implements SearchEvent {
  const factory FetchAllLabels() = _$FetchAllLabels;
}

abstract class $FetchAllLabelsReceivedCopyWith<$Res> {
  factory $FetchAllLabelsReceivedCopyWith(FetchAllLabelsReceived value,
          $Res Function(FetchAllLabelsReceived) then) =
      _$FetchAllLabelsReceivedCopyWithImpl<$Res>;
  $Res call(
      {OperationResponse<GFetchAllLabelsData, GFetchAllLabelsVars> response});
}

class _$FetchAllLabelsReceivedCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements $FetchAllLabelsReceivedCopyWith<$Res> {
  _$FetchAllLabelsReceivedCopyWithImpl(FetchAllLabelsReceived _value,
      $Res Function(FetchAllLabelsReceived) _then)
      : super(_value, (v) => _then(v as FetchAllLabelsReceived));

  @override
  FetchAllLabelsReceived get _value => super._value as FetchAllLabelsReceived;

  @override
  $Res call({
    Object response = freezed,
  }) {
    return _then(FetchAllLabelsReceived(
      response == freezed
          ? _value.response
          : response
              as OperationResponse<GFetchAllLabelsData, GFetchAllLabelsVars>,
    ));
  }
}

class _$FetchAllLabelsReceived implements FetchAllLabelsReceived {
  const _$FetchAllLabelsReceived(this.response) : assert(response != null);

  @override
  final OperationResponse<GFetchAllLabelsData, GFetchAllLabelsVars> response;

  @override
  String toString() {
    return 'SearchEvent.fetchAllLabelsReceived(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchAllLabelsReceived &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @override
  $FetchAllLabelsReceivedCopyWith<FetchAllLabelsReceived> get copyWith =>
      _$FetchAllLabelsReceivedCopyWithImpl<FetchAllLabelsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result tagChanged(List<String> tag),
    @required Result sortByChanged(String sortBy),
    @required Result searchTermChanged(String term),
    @required Result issueStateChanged(String state),
    @required Result fetchInitialSearchResults(),
    @required Result fetchMoreSearchResults(),
    @required Result fetchAllLabels(),
    @required
        Result fetchAllLabelsReceived(
            OperationResponse<GFetchAllLabelsData, GFetchAllLabelsVars>
                response),
    @required
        Result fetchMoreSearchResultsReceived(
            OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
                response),
    @required
        Result fetchInitialSearchResultsReceived(
            OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
                response),
  }) {
    assert(tagChanged != null);
    assert(sortByChanged != null);
    assert(searchTermChanged != null);
    assert(issueStateChanged != null);
    assert(fetchInitialSearchResults != null);
    assert(fetchMoreSearchResults != null);
    assert(fetchAllLabels != null);
    assert(fetchAllLabelsReceived != null);
    assert(fetchMoreSearchResultsReceived != null);
    assert(fetchInitialSearchResultsReceived != null);
    return fetchAllLabelsReceived(response);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result tagChanged(List<String> tag),
    Result sortByChanged(String sortBy),
    Result searchTermChanged(String term),
    Result issueStateChanged(String state),
    Result fetchInitialSearchResults(),
    Result fetchMoreSearchResults(),
    Result fetchAllLabels(),
    Result fetchAllLabelsReceived(
        OperationResponse<GFetchAllLabelsData, GFetchAllLabelsVars> response),
    Result fetchMoreSearchResultsReceived(
        OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
            response),
    Result fetchInitialSearchResultsReceived(
        OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
            response),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchAllLabelsReceived != null) {
      return fetchAllLabelsReceived(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result tagChanged(TagChanged value),
    @required Result sortByChanged(SortByChanged value),
    @required Result searchTermChanged(SearchTermChanged value),
    @required Result issueStateChanged(IssueStateChanged value),
    @required Result fetchInitialSearchResults(FetchInitialSearchResults value),
    @required Result fetchMoreSearchResults(FetchMoreSearchResults value),
    @required Result fetchAllLabels(FetchAllLabels value),
    @required Result fetchAllLabelsReceived(FetchAllLabelsReceived value),
    @required
        Result fetchMoreSearchResultsReceived(
            FetchMoreSearchResultsReceived value),
    @required
        Result fetchInitialSearchResultsReceived(
            FetchInitialSearchResultsReceived value),
  }) {
    assert(tagChanged != null);
    assert(sortByChanged != null);
    assert(searchTermChanged != null);
    assert(issueStateChanged != null);
    assert(fetchInitialSearchResults != null);
    assert(fetchMoreSearchResults != null);
    assert(fetchAllLabels != null);
    assert(fetchAllLabelsReceived != null);
    assert(fetchMoreSearchResultsReceived != null);
    assert(fetchInitialSearchResultsReceived != null);
    return fetchAllLabelsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result tagChanged(TagChanged value),
    Result sortByChanged(SortByChanged value),
    Result searchTermChanged(SearchTermChanged value),
    Result issueStateChanged(IssueStateChanged value),
    Result fetchInitialSearchResults(FetchInitialSearchResults value),
    Result fetchMoreSearchResults(FetchMoreSearchResults value),
    Result fetchAllLabels(FetchAllLabels value),
    Result fetchAllLabelsReceived(FetchAllLabelsReceived value),
    Result fetchMoreSearchResultsReceived(FetchMoreSearchResultsReceived value),
    Result fetchInitialSearchResultsReceived(
        FetchInitialSearchResultsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchAllLabelsReceived != null) {
      return fetchAllLabelsReceived(this);
    }
    return orElse();
  }
}

abstract class FetchAllLabelsReceived implements SearchEvent {
  const factory FetchAllLabelsReceived(
      OperationResponse<GFetchAllLabelsData, GFetchAllLabelsVars>
          response) = _$FetchAllLabelsReceived;

  OperationResponse<GFetchAllLabelsData, GFetchAllLabelsVars> get response;
  $FetchAllLabelsReceivedCopyWith<FetchAllLabelsReceived> get copyWith;
}

abstract class $FetchMoreSearchResultsReceivedCopyWith<$Res> {
  factory $FetchMoreSearchResultsReceivedCopyWith(
          FetchMoreSearchResultsReceived value,
          $Res Function(FetchMoreSearchResultsReceived) then) =
      _$FetchMoreSearchResultsReceivedCopyWithImpl<$Res>;
  $Res call(
      {OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
          response});
}

class _$FetchMoreSearchResultsReceivedCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements $FetchMoreSearchResultsReceivedCopyWith<$Res> {
  _$FetchMoreSearchResultsReceivedCopyWithImpl(
      FetchMoreSearchResultsReceived _value,
      $Res Function(FetchMoreSearchResultsReceived) _then)
      : super(_value, (v) => _then(v as FetchMoreSearchResultsReceived));

  @override
  FetchMoreSearchResultsReceived get _value =>
      super._value as FetchMoreSearchResultsReceived;

  @override
  $Res call({
    Object response = freezed,
  }) {
    return _then(FetchMoreSearchResultsReceived(
      response == freezed
          ? _value.response
          : response as OperationResponse<GFetchSearchResultsData,
              GFetchSearchResultsVars>,
    ));
  }
}

class _$FetchMoreSearchResultsReceived
    implements FetchMoreSearchResultsReceived {
  const _$FetchMoreSearchResultsReceived(this.response)
      : assert(response != null);

  @override
  final OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
      response;

  @override
  String toString() {
    return 'SearchEvent.fetchMoreSearchResultsReceived(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchMoreSearchResultsReceived &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @override
  $FetchMoreSearchResultsReceivedCopyWith<FetchMoreSearchResultsReceived>
      get copyWith => _$FetchMoreSearchResultsReceivedCopyWithImpl<
          FetchMoreSearchResultsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result tagChanged(List<String> tag),
    @required Result sortByChanged(String sortBy),
    @required Result searchTermChanged(String term),
    @required Result issueStateChanged(String state),
    @required Result fetchInitialSearchResults(),
    @required Result fetchMoreSearchResults(),
    @required Result fetchAllLabels(),
    @required
        Result fetchAllLabelsReceived(
            OperationResponse<GFetchAllLabelsData, GFetchAllLabelsVars>
                response),
    @required
        Result fetchMoreSearchResultsReceived(
            OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
                response),
    @required
        Result fetchInitialSearchResultsReceived(
            OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
                response),
  }) {
    assert(tagChanged != null);
    assert(sortByChanged != null);
    assert(searchTermChanged != null);
    assert(issueStateChanged != null);
    assert(fetchInitialSearchResults != null);
    assert(fetchMoreSearchResults != null);
    assert(fetchAllLabels != null);
    assert(fetchAllLabelsReceived != null);
    assert(fetchMoreSearchResultsReceived != null);
    assert(fetchInitialSearchResultsReceived != null);
    return fetchMoreSearchResultsReceived(response);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result tagChanged(List<String> tag),
    Result sortByChanged(String sortBy),
    Result searchTermChanged(String term),
    Result issueStateChanged(String state),
    Result fetchInitialSearchResults(),
    Result fetchMoreSearchResults(),
    Result fetchAllLabels(),
    Result fetchAllLabelsReceived(
        OperationResponse<GFetchAllLabelsData, GFetchAllLabelsVars> response),
    Result fetchMoreSearchResultsReceived(
        OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
            response),
    Result fetchInitialSearchResultsReceived(
        OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
            response),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchMoreSearchResultsReceived != null) {
      return fetchMoreSearchResultsReceived(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result tagChanged(TagChanged value),
    @required Result sortByChanged(SortByChanged value),
    @required Result searchTermChanged(SearchTermChanged value),
    @required Result issueStateChanged(IssueStateChanged value),
    @required Result fetchInitialSearchResults(FetchInitialSearchResults value),
    @required Result fetchMoreSearchResults(FetchMoreSearchResults value),
    @required Result fetchAllLabels(FetchAllLabels value),
    @required Result fetchAllLabelsReceived(FetchAllLabelsReceived value),
    @required
        Result fetchMoreSearchResultsReceived(
            FetchMoreSearchResultsReceived value),
    @required
        Result fetchInitialSearchResultsReceived(
            FetchInitialSearchResultsReceived value),
  }) {
    assert(tagChanged != null);
    assert(sortByChanged != null);
    assert(searchTermChanged != null);
    assert(issueStateChanged != null);
    assert(fetchInitialSearchResults != null);
    assert(fetchMoreSearchResults != null);
    assert(fetchAllLabels != null);
    assert(fetchAllLabelsReceived != null);
    assert(fetchMoreSearchResultsReceived != null);
    assert(fetchInitialSearchResultsReceived != null);
    return fetchMoreSearchResultsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result tagChanged(TagChanged value),
    Result sortByChanged(SortByChanged value),
    Result searchTermChanged(SearchTermChanged value),
    Result issueStateChanged(IssueStateChanged value),
    Result fetchInitialSearchResults(FetchInitialSearchResults value),
    Result fetchMoreSearchResults(FetchMoreSearchResults value),
    Result fetchAllLabels(FetchAllLabels value),
    Result fetchAllLabelsReceived(FetchAllLabelsReceived value),
    Result fetchMoreSearchResultsReceived(FetchMoreSearchResultsReceived value),
    Result fetchInitialSearchResultsReceived(
        FetchInitialSearchResultsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchMoreSearchResultsReceived != null) {
      return fetchMoreSearchResultsReceived(this);
    }
    return orElse();
  }
}

abstract class FetchMoreSearchResultsReceived implements SearchEvent {
  const factory FetchMoreSearchResultsReceived(
      OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
          response) = _$FetchMoreSearchResultsReceived;

  OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
      get response;
  $FetchMoreSearchResultsReceivedCopyWith<FetchMoreSearchResultsReceived>
      get copyWith;
}

abstract class $FetchInitialSearchResultsReceivedCopyWith<$Res> {
  factory $FetchInitialSearchResultsReceivedCopyWith(
          FetchInitialSearchResultsReceived value,
          $Res Function(FetchInitialSearchResultsReceived) then) =
      _$FetchInitialSearchResultsReceivedCopyWithImpl<$Res>;
  $Res call(
      {OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
          response});
}

class _$FetchInitialSearchResultsReceivedCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements $FetchInitialSearchResultsReceivedCopyWith<$Res> {
  _$FetchInitialSearchResultsReceivedCopyWithImpl(
      FetchInitialSearchResultsReceived _value,
      $Res Function(FetchInitialSearchResultsReceived) _then)
      : super(_value, (v) => _then(v as FetchInitialSearchResultsReceived));

  @override
  FetchInitialSearchResultsReceived get _value =>
      super._value as FetchInitialSearchResultsReceived;

  @override
  $Res call({
    Object response = freezed,
  }) {
    return _then(FetchInitialSearchResultsReceived(
      response == freezed
          ? _value.response
          : response as OperationResponse<GFetchSearchResultsData,
              GFetchSearchResultsVars>,
    ));
  }
}

class _$FetchInitialSearchResultsReceived
    implements FetchInitialSearchResultsReceived {
  const _$FetchInitialSearchResultsReceived(this.response)
      : assert(response != null);

  @override
  final OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
      response;

  @override
  String toString() {
    return 'SearchEvent.fetchInitialSearchResultsReceived(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchInitialSearchResultsReceived &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @override
  $FetchInitialSearchResultsReceivedCopyWith<FetchInitialSearchResultsReceived>
      get copyWith => _$FetchInitialSearchResultsReceivedCopyWithImpl<
          FetchInitialSearchResultsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result tagChanged(List<String> tag),
    @required Result sortByChanged(String sortBy),
    @required Result searchTermChanged(String term),
    @required Result issueStateChanged(String state),
    @required Result fetchInitialSearchResults(),
    @required Result fetchMoreSearchResults(),
    @required Result fetchAllLabels(),
    @required
        Result fetchAllLabelsReceived(
            OperationResponse<GFetchAllLabelsData, GFetchAllLabelsVars>
                response),
    @required
        Result fetchMoreSearchResultsReceived(
            OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
                response),
    @required
        Result fetchInitialSearchResultsReceived(
            OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
                response),
  }) {
    assert(tagChanged != null);
    assert(sortByChanged != null);
    assert(searchTermChanged != null);
    assert(issueStateChanged != null);
    assert(fetchInitialSearchResults != null);
    assert(fetchMoreSearchResults != null);
    assert(fetchAllLabels != null);
    assert(fetchAllLabelsReceived != null);
    assert(fetchMoreSearchResultsReceived != null);
    assert(fetchInitialSearchResultsReceived != null);
    return fetchInitialSearchResultsReceived(response);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result tagChanged(List<String> tag),
    Result sortByChanged(String sortBy),
    Result searchTermChanged(String term),
    Result issueStateChanged(String state),
    Result fetchInitialSearchResults(),
    Result fetchMoreSearchResults(),
    Result fetchAllLabels(),
    Result fetchAllLabelsReceived(
        OperationResponse<GFetchAllLabelsData, GFetchAllLabelsVars> response),
    Result fetchMoreSearchResultsReceived(
        OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
            response),
    Result fetchInitialSearchResultsReceived(
        OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
            response),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchInitialSearchResultsReceived != null) {
      return fetchInitialSearchResultsReceived(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result tagChanged(TagChanged value),
    @required Result sortByChanged(SortByChanged value),
    @required Result searchTermChanged(SearchTermChanged value),
    @required Result issueStateChanged(IssueStateChanged value),
    @required Result fetchInitialSearchResults(FetchInitialSearchResults value),
    @required Result fetchMoreSearchResults(FetchMoreSearchResults value),
    @required Result fetchAllLabels(FetchAllLabels value),
    @required Result fetchAllLabelsReceived(FetchAllLabelsReceived value),
    @required
        Result fetchMoreSearchResultsReceived(
            FetchMoreSearchResultsReceived value),
    @required
        Result fetchInitialSearchResultsReceived(
            FetchInitialSearchResultsReceived value),
  }) {
    assert(tagChanged != null);
    assert(sortByChanged != null);
    assert(searchTermChanged != null);
    assert(issueStateChanged != null);
    assert(fetchInitialSearchResults != null);
    assert(fetchMoreSearchResults != null);
    assert(fetchAllLabels != null);
    assert(fetchAllLabelsReceived != null);
    assert(fetchMoreSearchResultsReceived != null);
    assert(fetchInitialSearchResultsReceived != null);
    return fetchInitialSearchResultsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result tagChanged(TagChanged value),
    Result sortByChanged(SortByChanged value),
    Result searchTermChanged(SearchTermChanged value),
    Result issueStateChanged(IssueStateChanged value),
    Result fetchInitialSearchResults(FetchInitialSearchResults value),
    Result fetchMoreSearchResults(FetchMoreSearchResults value),
    Result fetchAllLabels(FetchAllLabels value),
    Result fetchAllLabelsReceived(FetchAllLabelsReceived value),
    Result fetchMoreSearchResultsReceived(FetchMoreSearchResultsReceived value),
    Result fetchInitialSearchResultsReceived(
        FetchInitialSearchResultsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchInitialSearchResultsReceived != null) {
      return fetchInitialSearchResultsReceived(this);
    }
    return orElse();
  }
}

abstract class FetchInitialSearchResultsReceived implements SearchEvent {
  const factory FetchInitialSearchResultsReceived(
      OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
          response) = _$FetchInitialSearchResultsReceived;

  OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
      get response;
  $FetchInitialSearchResultsReceivedCopyWith<FetchInitialSearchResultsReceived>
      get copyWith;
}

class _$SearchStateTearOff {
  const _$SearchStateTearOff();

// ignore: unused_element
  _SearchState call(
      {String sortBy,
      String state,
      List<String> labels,
      String label,
      String searchEndCursor,
      String labelEndCursor,
      String searchTerm,
      bool isFetchingInitial,
      bool isFetchingMore,
      BuiltList<GFetchSearchResultsData_search_edges> searchResults,
      String errorMessage,
      bool searchHasNextPage,
      bool labelHasNextPage,
      String loadMoreErrorMessage}) {
    return _SearchState(
      sortBy: sortBy,
      state: state,
      labels: labels,
      label: label,
      searchEndCursor: searchEndCursor,
      labelEndCursor: labelEndCursor,
      searchTerm: searchTerm,
      isFetchingInitial: isFetchingInitial,
      isFetchingMore: isFetchingMore,
      searchResults: searchResults,
      errorMessage: errorMessage,
      searchHasNextPage: searchHasNextPage,
      labelHasNextPage: labelHasNextPage,
      loadMoreErrorMessage: loadMoreErrorMessage,
    );
  }
}

// ignore: unused_element
const $SearchState = _$SearchStateTearOff();

mixin _$SearchState {
  String get sortBy;
  String get state;
  List<String> get labels;
  String get label;
  String get searchEndCursor;
  String get labelEndCursor;
  String get searchTerm;
  bool get isFetchingInitial;
  bool get isFetchingMore;
  BuiltList<GFetchSearchResultsData_search_edges> get searchResults;
  String get errorMessage;
  bool get searchHasNextPage;
  bool get labelHasNextPage;
  String get loadMoreErrorMessage;

  $SearchStateCopyWith<SearchState> get copyWith;
}

abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
  $Res call(
      {String sortBy,
      String state,
      List<String> labels,
      String label,
      String searchEndCursor,
      String labelEndCursor,
      String searchTerm,
      bool isFetchingInitial,
      bool isFetchingMore,
      BuiltList<GFetchSearchResultsData_search_edges> searchResults,
      String errorMessage,
      bool searchHasNextPage,
      bool labelHasNextPage,
      String loadMoreErrorMessage});
}

class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;

  @override
  $Res call({
    Object sortBy = freezed,
    Object state = freezed,
    Object labels = freezed,
    Object label = freezed,
    Object searchEndCursor = freezed,
    Object labelEndCursor = freezed,
    Object searchTerm = freezed,
    Object isFetchingInitial = freezed,
    Object isFetchingMore = freezed,
    Object searchResults = freezed,
    Object errorMessage = freezed,
    Object searchHasNextPage = freezed,
    Object labelHasNextPage = freezed,
    Object loadMoreErrorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      sortBy: sortBy == freezed ? _value.sortBy : sortBy as String,
      state: state == freezed ? _value.state : state as String,
      labels: labels == freezed ? _value.labels : labels as List<String>,
      label: label == freezed ? _value.label : label as String,
      searchEndCursor: searchEndCursor == freezed
          ? _value.searchEndCursor
          : searchEndCursor as String,
      labelEndCursor: labelEndCursor == freezed
          ? _value.labelEndCursor
          : labelEndCursor as String,
      searchTerm:
          searchTerm == freezed ? _value.searchTerm : searchTerm as String,
      isFetchingInitial: isFetchingInitial == freezed
          ? _value.isFetchingInitial
          : isFetchingInitial as bool,
      isFetchingMore: isFetchingMore == freezed
          ? _value.isFetchingMore
          : isFetchingMore as bool,
      searchResults: searchResults == freezed
          ? _value.searchResults
          : searchResults as BuiltList<GFetchSearchResultsData_search_edges>,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      searchHasNextPage: searchHasNextPage == freezed
          ? _value.searchHasNextPage
          : searchHasNextPage as bool,
      labelHasNextPage: labelHasNextPage == freezed
          ? _value.labelHasNextPage
          : labelHasNextPage as bool,
      loadMoreErrorMessage: loadMoreErrorMessage == freezed
          ? _value.loadMoreErrorMessage
          : loadMoreErrorMessage as String,
    ));
  }
}

abstract class _$SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateCopyWith(
          _SearchState value, $Res Function(_SearchState) then) =
      __$SearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String sortBy,
      String state,
      List<String> labels,
      String label,
      String searchEndCursor,
      String labelEndCursor,
      String searchTerm,
      bool isFetchingInitial,
      bool isFetchingMore,
      BuiltList<GFetchSearchResultsData_search_edges> searchResults,
      String errorMessage,
      bool searchHasNextPage,
      bool labelHasNextPage,
      String loadMoreErrorMessage});
}

class __$SearchStateCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateCopyWith<$Res> {
  __$SearchStateCopyWithImpl(
      _SearchState _value, $Res Function(_SearchState) _then)
      : super(_value, (v) => _then(v as _SearchState));

  @override
  _SearchState get _value => super._value as _SearchState;

  @override
  $Res call({
    Object sortBy = freezed,
    Object state = freezed,
    Object labels = freezed,
    Object label = freezed,
    Object searchEndCursor = freezed,
    Object labelEndCursor = freezed,
    Object searchTerm = freezed,
    Object isFetchingInitial = freezed,
    Object isFetchingMore = freezed,
    Object searchResults = freezed,
    Object errorMessage = freezed,
    Object searchHasNextPage = freezed,
    Object labelHasNextPage = freezed,
    Object loadMoreErrorMessage = freezed,
  }) {
    return _then(_SearchState(
      sortBy: sortBy == freezed ? _value.sortBy : sortBy as String,
      state: state == freezed ? _value.state : state as String,
      labels: labels == freezed ? _value.labels : labels as List<String>,
      label: label == freezed ? _value.label : label as String,
      searchEndCursor: searchEndCursor == freezed
          ? _value.searchEndCursor
          : searchEndCursor as String,
      labelEndCursor: labelEndCursor == freezed
          ? _value.labelEndCursor
          : labelEndCursor as String,
      searchTerm:
          searchTerm == freezed ? _value.searchTerm : searchTerm as String,
      isFetchingInitial: isFetchingInitial == freezed
          ? _value.isFetchingInitial
          : isFetchingInitial as bool,
      isFetchingMore: isFetchingMore == freezed
          ? _value.isFetchingMore
          : isFetchingMore as bool,
      searchResults: searchResults == freezed
          ? _value.searchResults
          : searchResults as BuiltList<GFetchSearchResultsData_search_edges>,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      searchHasNextPage: searchHasNextPage == freezed
          ? _value.searchHasNextPage
          : searchHasNextPage as bool,
      labelHasNextPage: labelHasNextPage == freezed
          ? _value.labelHasNextPage
          : labelHasNextPage as bool,
      loadMoreErrorMessage: loadMoreErrorMessage == freezed
          ? _value.loadMoreErrorMessage
          : loadMoreErrorMessage as String,
    ));
  }
}

class _$_SearchState implements _SearchState {
  const _$_SearchState(
      {this.sortBy,
      this.state,
      this.labels,
      this.label,
      this.searchEndCursor,
      this.labelEndCursor,
      this.searchTerm,
      this.isFetchingInitial,
      this.isFetchingMore,
      this.searchResults,
      this.errorMessage,
      this.searchHasNextPage,
      this.labelHasNextPage,
      this.loadMoreErrorMessage});

  @override
  final String sortBy;
  @override
  final String state;
  @override
  final List<String> labels;
  @override
  final String label;
  @override
  final String searchEndCursor;
  @override
  final String labelEndCursor;
  @override
  final String searchTerm;
  @override
  final bool isFetchingInitial;
  @override
  final bool isFetchingMore;
  @override
  final BuiltList<GFetchSearchResultsData_search_edges> searchResults;
  @override
  final String errorMessage;
  @override
  final bool searchHasNextPage;
  @override
  final bool labelHasNextPage;
  @override
  final String loadMoreErrorMessage;

  @override
  String toString() {
    return 'SearchState(sortBy: $sortBy, state: $state, labels: $labels, label: $label, searchEndCursor: $searchEndCursor, labelEndCursor: $labelEndCursor, searchTerm: $searchTerm, isFetchingInitial: $isFetchingInitial, isFetchingMore: $isFetchingMore, searchResults: $searchResults, errorMessage: $errorMessage, searchHasNextPage: $searchHasNextPage, labelHasNextPage: $labelHasNextPage, loadMoreErrorMessage: $loadMoreErrorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchState &&
            (identical(other.sortBy, sortBy) ||
                const DeepCollectionEquality().equals(other.sortBy, sortBy)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.labels, labels) ||
                const DeepCollectionEquality().equals(other.labels, labels)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.searchEndCursor, searchEndCursor) ||
                const DeepCollectionEquality()
                    .equals(other.searchEndCursor, searchEndCursor)) &&
            (identical(other.labelEndCursor, labelEndCursor) ||
                const DeepCollectionEquality()
                    .equals(other.labelEndCursor, labelEndCursor)) &&
            (identical(other.searchTerm, searchTerm) ||
                const DeepCollectionEquality()
                    .equals(other.searchTerm, searchTerm)) &&
            (identical(other.isFetchingInitial, isFetchingInitial) ||
                const DeepCollectionEquality()
                    .equals(other.isFetchingInitial, isFetchingInitial)) &&
            (identical(other.isFetchingMore, isFetchingMore) ||
                const DeepCollectionEquality()
                    .equals(other.isFetchingMore, isFetchingMore)) &&
            (identical(other.searchResults, searchResults) ||
                const DeepCollectionEquality()
                    .equals(other.searchResults, searchResults)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)) &&
            (identical(other.searchHasNextPage, searchHasNextPage) ||
                const DeepCollectionEquality()
                    .equals(other.searchHasNextPage, searchHasNextPage)) &&
            (identical(other.labelHasNextPage, labelHasNextPage) ||
                const DeepCollectionEquality()
                    .equals(other.labelHasNextPage, labelHasNextPage)) &&
            (identical(other.loadMoreErrorMessage, loadMoreErrorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.loadMoreErrorMessage, loadMoreErrorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sortBy) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(labels) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(searchEndCursor) ^
      const DeepCollectionEquality().hash(labelEndCursor) ^
      const DeepCollectionEquality().hash(searchTerm) ^
      const DeepCollectionEquality().hash(isFetchingInitial) ^
      const DeepCollectionEquality().hash(isFetchingMore) ^
      const DeepCollectionEquality().hash(searchResults) ^
      const DeepCollectionEquality().hash(errorMessage) ^
      const DeepCollectionEquality().hash(searchHasNextPage) ^
      const DeepCollectionEquality().hash(labelHasNextPage) ^
      const DeepCollectionEquality().hash(loadMoreErrorMessage);

  @override
  _$SearchStateCopyWith<_SearchState> get copyWith =>
      __$SearchStateCopyWithImpl<_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {String sortBy,
      String state,
      List<String> labels,
      String label,
      String searchEndCursor,
      String labelEndCursor,
      String searchTerm,
      bool isFetchingInitial,
      bool isFetchingMore,
      BuiltList<GFetchSearchResultsData_search_edges> searchResults,
      String errorMessage,
      bool searchHasNextPage,
      bool labelHasNextPage,
      String loadMoreErrorMessage}) = _$_SearchState;

  @override
  String get sortBy;
  @override
  String get state;
  @override
  List<String> get labels;
  @override
  String get label;
  @override
  String get searchEndCursor;
  @override
  String get labelEndCursor;
  @override
  String get searchTerm;
  @override
  bool get isFetchingInitial;
  @override
  bool get isFetchingMore;
  @override
  BuiltList<GFetchSearchResultsData_search_edges> get searchResults;
  @override
  String get errorMessage;
  @override
  bool get searchHasNextPage;
  @override
  bool get labelHasNextPage;
  @override
  String get loadMoreErrorMessage;
  @override
  _$SearchStateCopyWith<_SearchState> get copyWith;
}
