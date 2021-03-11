part of 'search_bloc.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState({
    String sortBy,
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
    String loadMoreErrorMessage,
  }) = _SearchState;

  factory SearchState.initial() => SearchState(
        sortBy: "",
        state: "",
        label: '',
        labels: [],
        searchEndCursor: null,
        labelEndCursor: null,
        searchHasNextPage: false,
        labelHasNextPage: false,
        searchTerm: '',
        isFetchingInitial: false,
        isFetchingMore: false,
        searchResults: new BuiltList<GFetchSearchResultsData_search_edges>([]),
        errorMessage: '',
        loadMoreErrorMessage: '',
      );
}
