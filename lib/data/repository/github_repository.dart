import 'package:flutter_issue_tracker/data/graphql/labels.req.gql.dart';
import 'package:flutter_issue_tracker/data/repository/graphql_client.dart';
import 'package:ferry/ferry.dart';

abstract class IGithubFacade {
  Stream<OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>>
      fetchSearchResults({String searchQuery, String endCursor});
  Stream<OperationResponse<GFetchAllLabelsData, GFetchAllLabelsVars>>
      fetchAllLabels({String endCursor});
}

class GithubRepository implements IGithubFacade {
  GithubRepository(this._client);

  final Client _client;

  @override
  Stream<OperationResponse<GFetchSearchResultsData, GFetchSearchResultsVars>>
      fetchSearchResults({String searchQuery, String endCursor}) async* {
    final searchReq = GFetchSearchResultsReq((b) => b
      ..vars.searchQuery = searchQuery
      ..vars.endCursor = endCursor ?? null);

    yield* _client.request(searchReq);
  }

  @override
  Stream<OperationResponse<GFetchAllLabelsData, GFetchAllLabelsVars>>
      fetchAllLabels({String endCursor}) async* {
    final labelsReq =
        GFetchAllLabelsReq((b) => b..vars.endCursor = endCursor ?? null);

    yield* _client.request(labelsReq);
  }
}
