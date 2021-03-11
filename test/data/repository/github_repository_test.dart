import 'package:flutter_issue_tracker/data/graphql/labels.req.gql.dart';
import 'package:flutter_issue_tracker/data/repository/github_repository.dart';
import 'package:flutter_issue_tracker/data/repository/graphql_client.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockClient extends Mock implements Client {}

main() {
  MockClient mockClient;
  GithubRepository githubRepository;
  setUp(() {
    mockClient = MockClient();
    githubRepository = GithubRepository(mockClient);
  });

  group('Github Repository', () {
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
        "edges": []
      }
    });

    OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars> res =
        OperationResponse(
      operationRequest: searchReq,
      data: dataSearchResults,
    );

    GFetchAllLabelsData datalabelResults = GFetchAllLabelsData.fromJson({
      "repository": {
        "labels": {
          "pageInfo": {
            "hasPreviousPage": false,
            "hasNextPage": true,
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

    test(
        'should return stream of operation response when fetchSearchResults is called',
        () {
      //arrange
      when(mockClient.request(searchReq)).thenAnswer((_) => Stream.value(res));
      //act
      final result =
          githubRepository.fetchSearchResults(searchQuery: '', endCursor: null);
      //assert
      expect(
          result,
          isA<
              Stream<
                  OperationResponse<GFetchSearchResultsData,
                      GFetchSearchResultsVars>>>());
    });

    test(
        'should return stream of operation response when fetchAllLabels is called',
        () {
      //arrange
      when(mockClient.request(labelReq))
          .thenAnswer((_) => Stream.value(resLabels));
      //act
      final result = githubRepository.fetchAllLabels(endCursor: null);
      //assert
      expect(
          result,
          isA<
              Stream<
                  OperationResponse<GFetchAllLabelsData,
                      GFetchAllLabelsVars>>>());
    });
  });
}
