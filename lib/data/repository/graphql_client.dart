import 'package:ferry/ferry.dart';
import 'package:gql_http_link/gql_http_link.dart';

export '../graphql/search.req.gql.dart';
export '../graphql/search.var.gql.dart';
export '../graphql/search.data.gql.dart';

export '../graphql/labels.req.gql.dart';
export '../graphql/labels.var.gql.dart';
export '../graphql/labels.data.gql.dart';

Client initClient(String url) {
  const String personal_access_token =
      "b7d9ef49ecbfa06ec4a0fe8e325be5618f9a2577";
  final link = HttpLink(url,
      defaultHeaders: {"authorization": "Bearer $personal_access_token"});

  final client = Client(link: link);

  return client;
}
