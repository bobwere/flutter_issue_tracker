import 'package:bloc_test/bloc_test.dart';
import 'package:ferry_exec/src/operation_response.dart';
import 'package:flutter_issue_tracker/bloc/search_bloc.dart';
import 'package:flutter_issue_tracker/data/repository/github_repository.dart';
import 'package:flutter_issue_tracker/data/repository/graphql_client.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql_link/src/exceptions.dart';

class MockIGithubFacade extends Mock implements GithubRepository {}

main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  MockIGithubFacade mockIGithubFacade;

  SearchBloc searchBloc;

  setUp(() {
    mockIGithubFacade = MockIGithubFacade();
    searchBloc = SearchBloc(mockIGithubFacade);
  });

  test('initialState of SearchBloc', () {
    expect(searchBloc.state, equals(SearchState.initial()));
    // assert
  });

  group(
    'SearchBloc',
    () {
      List<String> dummyListLabelStrings = ['label:a-animation'];
      String sortBy = 'sort:created-asc';
      String searchTerm = 'animation';
      String dummyState = 'is:open';
      String dummyLabelString = "label:\"${dummyListLabelStrings[0]}\"";
      final searchReq = GFetchSearchResultsReq((b) => b
        ..vars.searchQuery = ''
        ..vars.endCursor = null ?? null);

      final labelReq =
          GFetchAllLabelsReq((b) => b..vars.endCursor = null ?? null);

      GFetchSearchResultsData dataSearchResults =
          GFetchSearchResultsData.fromJson({
        "search": {
          "issueCount": 0,
          "pageInfo": {
            "startCursor": null,
            "endCursor": 'asdcaskcasmdc',
            "hasNextPage": false,
            "hasPreviousPage": false
          },
          "edges": [
            {
              "cursor": "Y3Vyc29yOjE=",
              "node": {
                "state": "OPEN",
                "body": "Steps to reproduce",
                "labels": {
                  "totalCount": 1,
                  "pageInfo": {
                    "startCursor":
                        "Y3Vyc29yOnYyOpOkdG9vbLkyMDE1LTExLTA3VDExOjU1OjQyKzAzOjAwzhDlkCQ=",
                    "endCursor":
                        "Y3Vyc29yOnYyOpOkdG9vbLkyMDE1LTExLTA3VDExOjU1OjQyKzAzOjAwzhDlkCQ=",
                    "hasNextPage": false,
                    "hasPreviousPage": false
                  },
                  "edges": [
                    {
                      "node": {
                        "id": "MDU6TGFiZWwyODM0ODAxMDA=",
                        "name": "tool",
                        "color": "5319e7"
                      }
                    }
                  ]
                },
                "createdAt": "2021-03-10T18:48:34Z",
                "updatedAt": "2021-03-10T18:52:24Z",
                "title":
                    "Sometimes have to call `pod update` to resolve dependencies",
                "number": 77831,
                "author": {
                  "login": "gaaclarke",
                  "avatarUrl": "https://avatars.githubusercontent.com/u/30"
                },
                "comments": {
                  "totalCount": 0,
                  "pageInfo": {
                    "startCursor": null,
                    "endCursor": null,
                    "hasNextPage": false,
                    "hasPreviousPage": false
                  },
                  "edges": []
                }
              }
            }
          ]
        }
      });

      GFetchAllLabelsData datalabelResults = GFetchAllLabelsData.fromJson({
        "repository": {
          "labels": {
            "pageInfo": {
              "hasPreviousPage": false,
              "hasNextPage": false,
              "endCursor":
                  "Y3Vyc29yOnYyOpK5MjAxNS0xMS0wN1QxMTo1MDo1NyswMzowMM4Q5YxY"
            },
            "edges": [
              {
                "node": {"name": "a: tests"}
              }
            ]
          }
        }
      });

      GFetchAllLabelsData dataNolabelNextPageResults =
          GFetchAllLabelsData.fromJson({
        "repository": {
          "labels": {
            "pageInfo": {
              "hasPreviousPage": false,
              "hasNextPage": false,
              "endCursor":
                  "Y3Vyc29yOnYyOpK5MjAxNS0xMS0wN1QxMTo1MDo1NyswMzowMM4Q5YxY"
            },
            "edges": [
              {
                "node": {"name": "a: tests"}
              }
            ]
          }
        }
      });

      OperationResponse<GFetchAllLabelsData, GFetchAllLabelsVars> resLabels =
          OperationResponse(
        operationRequest: labelReq,
        data: datalabelResults,
      );

      OperationResponse<GFetchAllLabelsData, GFetchAllLabelsVars>
          resNoNextPageLabels = OperationResponse(
        operationRequest: labelReq,
        data: dataNolabelNextPageResults,
      );

      OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars> res =
          OperationResponse(
        operationRequest: searchReq,
        data: dataSearchResults,
      );

      OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>
          resException = OperationResponse(
              operationRequest: searchReq,
              linkException: ServerException(parsedResponse: null));

      var searchQuery = "repo:flutter/flutter in:title is:issue    ";

      blocTest<SearchBloc, SearchState>(
        'emits [] when nothing is added',
        build: () => searchBloc,
        expect: [],
      );

      blocTest<SearchBloc, SearchState>(
        'emits [] when nothing is added',
        build: () => searchBloc,
        expect: [],
      );

      blocTest<SearchBloc, SearchState>(
        'SearchBloc emits changed state.label when SearchEvent.TagChanged is added',
        build: () {
          when(mockIGithubFacade.fetchSearchResults(
                  searchQuery:
                      "repo:flutter/flutter in:title is:issue   $dummyLabelString "))
              .thenAnswer(
            (_) {
              return Stream.value(res);
            },
          );
          return searchBloc;
        },
        seed: SearchState.initial().copyWith.call(labels: ['a:animation']),
        act: (bloc) {
          bloc.add(TagChanged(tag: dummyListLabelStrings));
        },
        expect: [
          SearchState.initial()
              .copyWith
              .call(label: dummyLabelString, labels: ['a:animation']),
          SearchState.initial().copyWith.call(
              isFetchingInitial: true,
              label: dummyLabelString,
              labels: ['a:animation']),
          SearchState.initial().copyWith.call(
                searchResults: res.data.search.edges,
                isFetchingInitial: false,
                labels: ['a:animation'],
                label: dummyLabelString,
                searchHasNextPage: res.data.search.pageInfo.hasNextPage,
                searchEndCursor: res.data.search.pageInfo.endCursor,
              ),
        ],
      );

      blocTest<SearchBloc, SearchState>(
          'SearchBloc emits changed state.sortBy when SearchEvent.SortByChanged is added',
          build: () {
            when(mockIGithubFacade.fetchSearchResults(
                    searchQuery:
                        "repo:flutter/flutter in:title is:issue $sortBy   "))
                .thenAnswer(
              (_) {
                return Stream.value(res);
              },
            );
            return searchBloc;
          },
          seed: SearchState.initial().copyWith.call(labels: ['a:animation']),
          act: (bloc) {
            bloc.add(SortByChanged(sortBy: 'oldest'));
          },
          expect: [
            SearchState.initial()
                .copyWith
                .call(sortBy: sortBy, labels: ['a:animation']),
            SearchState.initial().copyWith.call(
                isFetchingInitial: true,
                sortBy: sortBy,
                labels: ['a:animation']),
            SearchState.initial().copyWith.call(
              labels: ['a:animation'],
              searchResults: res.data.search.edges,
              isFetchingInitial: false,
              sortBy: sortBy,
              searchHasNextPage: res.data.search.pageInfo.hasNextPage,
              searchEndCursor: res.data.search.pageInfo.endCursor,
            ),
          ]);

      blocTest<SearchBloc, SearchState>(
          'SearchBloc emits changed state.SearchTerm when SearchEvent.SearchTermChanged is added',
          build: () {
            when(mockIGithubFacade.fetchSearchResults(
                    searchQuery:
                        "repo:flutter/flutter in:title is:issue    $searchTerm"))
                .thenAnswer(
              (_) {
                return Stream.value(res);
              },
            );
            return searchBloc;
          },
          seed: SearchState.initial().copyWith.call(labels: ['a:animation']),
          act: (bloc) {
            bloc.add(SearchTermChanged(term: searchTerm));
          },
          wait: Duration(milliseconds: 300),
          expect: [
            SearchState.initial()
                .copyWith
                .call(searchTerm: searchTerm, labels: ['a:animation']),
            SearchState.initial().copyWith.call(
                isFetchingInitial: true,
                searchTerm: searchTerm,
                labels: ['a:animation']),
            SearchState.initial().copyWith.call(
                  searchResults: res.data.search.edges,
                  labels: ['a:animation'],
                  isFetchingInitial: false,
                  searchTerm: searchTerm,
                  searchHasNextPage: res.data.search.pageInfo.hasNextPage,
                  searchEndCursor: res.data.search.pageInfo.endCursor,
                ),
          ]);

      blocTest<SearchBloc, SearchState>(
          'SearchBloc emits changed state.state when SearchEvent.IssueStateChanged is added',
          build: () {
            when(mockIGithubFacade.fetchSearchResults(
                    searchQuery:
                        "repo:flutter/flutter in:title is:issue  $dummyState  "))
                .thenAnswer(
              (_) {
                return Stream.value(res);
              },
            );
            return searchBloc;
          },
          seed: SearchState.initial().copyWith.call(labels: ['a:animation']),
          act: (bloc) {
            bloc.add(IssueStateChanged(state: 'open'));
          },
          expect: [
            SearchState.initial()
                .copyWith
                .call(state: dummyState, labels: ['a:animation']),
            SearchState.initial().copyWith.call(
                isFetchingInitial: true,
                state: dummyState,
                labels: ['a:animation']),
            SearchState.initial().copyWith.call(
                  searchResults: res.data.search.edges,
                  labels: ['a:animation'],
                  isFetchingInitial: false,
                  state: dummyState,
                  searchHasNextPage: res.data.search.pageInfo.hasNextPage,
                  searchEndCursor: res.data.search.pageInfo.endCursor,
                ),
          ]);
      blocTest<SearchBloc, SearchState>(
          'SearchBloc emits changed state.isloading then state.searchResults when SearchEvent.FetchSearchResults is added when Successfully',
          build: () {
            when(mockIGithubFacade.fetchSearchResults(searchQuery: searchQuery))
                .thenAnswer((_) {
              return Stream.value(res);
            });

            return searchBloc;
          },
          seed: SearchState.initial().copyWith.call(labels: ['a:animation']),
          act: (bloc) {
            bloc.add(FetchInitialSearchResults());
          },
          expect: [
            SearchState.initial()
                .copyWith
                .call(isFetchingInitial: true, labels: ['a:animation']),
            SearchState.initial().copyWith.call(
                  searchResults: res.data.search.edges,
                  labels: ['a:animation'],
                  isFetchingInitial: false,
                  searchHasNextPage: res.data.search.pageInfo.hasNextPage,
                  searchEndCursor: res.data.search.pageInfo.endCursor,
                ),
          ]);

      blocTest<SearchBloc, SearchState>(
          'SearchBloc emits changed state.isloading then state.errorMessage when SearchEvent.FetchSearchResults is added when Unsuccessfully',
          build: () {
            when(mockIGithubFacade.fetchSearchResults(searchQuery: searchQuery))
                .thenAnswer((_) {
              return Stream.value(resException);
            });

            return searchBloc;
          },
          seed: SearchState.initial().copyWith.call(labels: ['a:animation']),
          act: (bloc) {
            bloc.add(FetchInitialSearchResults());
          },
          expect: [
            SearchState.initial()
                .copyWith
                .call(isFetchingInitial: true, labels: ['a:animation']),
            SearchState.initial().copyWith.call(
                  errorMessage: 'no internet',
                  labels: ['a:animation'],
                  isFetchingInitial: false,
                ),
          ]);

      blocTest<SearchBloc, SearchState>(
          'SearchBloc emits changed state.labels when SearchEvent.FetchAllLabels is added and is Successfully and has response labelHasNextPage is false',
          build: () {
        when(mockIGithubFacade.fetchAllLabels(
                endCursor: SearchState.initial().labelEndCursor))
            .thenAnswer((_) {
          return Stream.value(resLabels);
        });

        return searchBloc;
      }, act: (bloc) {
        bloc.add(FetchAllLabels());
      }, expect: [
        SearchState.initial().copyWith.call(
              labelEndCursor:
                  resLabels.data.repository.labels.pageInfo.endCursor,
              labels: [resLabels.data.repository.labels.edges[0].node.name],
              labelHasNextPage:
                  resLabels.data.repository.labels.pageInfo.hasNextPage,
            ),
      ]);

      blocTest<SearchBloc, SearchState>(
        'SearchBloc emits changed state.searchResults when SearchEvent.FetchMoreSearchResults is added when Successfully',
        build: () {
          when(mockIGithubFacade.fetchSearchResults(
                  searchQuery: searchQuery,
                  endCursor: SearchState.initial().searchEndCursor))
              .thenAnswer((_) {
            return Stream.value(res);
          });
          return searchBloc;
        },
        act: (bloc) {
          bloc.add(FetchMoreSearchResults());
        },
        expect: [
          SearchState.initial().copyWith.call(isFetchingMore: true),
          SearchState.initial().copyWith.call(
                searchResults:
                    new BuiltList<GFetchSearchResultsData_search_edges>([
                  ...SearchState.initial().searchResults,
                  ...res.data.search.edges
                ]),
                isFetchingMore: false,
                searchHasNextPage: res.data.search.pageInfo.hasNextPage,
                searchEndCursor: res.data.search.pageInfo.endCursor,
              ),
        ],
      );
    },
  );

  tearDown(() {
    searchBloc?.close();
  });
}
