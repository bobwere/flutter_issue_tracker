// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:flutter_issue_tracker/data/graphql/search.ast.gql.dart' as _i5;
import 'package:flutter_issue_tracker/data/graphql/search.data.gql.dart' as _i2;
import 'package:flutter_issue_tracker/data/graphql/search.var.gql.dart' as _i3;
import 'package:flutter_issue_tracker/data/graphql/serializers.gql.dart' as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'search.req.gql.g.dart';

abstract class GFetchSearchResultsReq
    implements
        Built<GFetchSearchResultsReq, GFetchSearchResultsReqBuilder>,
        _i1.OperationRequest<_i2.GFetchSearchResultsData,
            _i3.GFetchSearchResultsVars> {
  GFetchSearchResultsReq._();

  factory GFetchSearchResultsReq(
          [Function(GFetchSearchResultsReqBuilder b) updates]) =
      _$GFetchSearchResultsReq;

  static void _initializeBuilder(GFetchSearchResultsReqBuilder b) => b
    ..operation = _i4.Operation(
        document: _i5.document, operationName: 'FetchSearchResults')
    ..executeOnListen = true;
  _i3.GFetchSearchResultsVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  @nullable
  String get requestId;
  @nullable
  @BuiltValueField(serialize: false)
  _i2.GFetchSearchResultsData Function(
          _i2.GFetchSearchResultsData, _i2.GFetchSearchResultsData)
      get updateResult;
  @nullable
  _i2.GFetchSearchResultsData get optimisticResponse;
  @nullable
  String get updateCacheHandlerKey;
  @nullable
  Map<String, dynamic> get updateCacheHandlerContext;
  @nullable
  _i1.FetchPolicy get fetchPolicy;
  @nullable
  bool get executeOnListen;
  @override
  _i2.GFetchSearchResultsData parseData(Map<String, dynamic> json) =>
      _i2.GFetchSearchResultsData.fromJson(json);
  static Serializer<GFetchSearchResultsReq> get serializer =>
      _$gFetchSearchResultsReqSerializer;
  Map<String, dynamic> toJson() =>
      _i6.serializers.serializeWith(GFetchSearchResultsReq.serializer, this);
  static GFetchSearchResultsReq fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GFetchSearchResultsReq.serializer, json);
}
