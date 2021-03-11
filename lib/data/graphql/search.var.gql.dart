// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_issue_tracker/data/graphql/serializers.gql.dart' as _i1;

part 'search.var.gql.g.dart';

abstract class GFetchSearchResultsVars
    implements Built<GFetchSearchResultsVars, GFetchSearchResultsVarsBuilder> {
  GFetchSearchResultsVars._();

  factory GFetchSearchResultsVars(
          [Function(GFetchSearchResultsVarsBuilder b) updates]) =
      _$GFetchSearchResultsVars;

  String get searchQuery;
  @nullable
  String get endCursor;
  static Serializer<GFetchSearchResultsVars> get serializer =>
      _$gFetchSearchResultsVarsSerializer;
  Map<String, dynamic> toJson() =>
      _i1.serializers.serializeWith(GFetchSearchResultsVars.serializer, this);
  static GFetchSearchResultsVars fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFetchSearchResultsVars.serializer, json);
}
