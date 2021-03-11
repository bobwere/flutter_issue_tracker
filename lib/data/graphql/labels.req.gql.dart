// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:flutter_issue_tracker/data/graphql/labels.ast.gql.dart' as _i5;
import 'package:flutter_issue_tracker/data/graphql/labels.data.gql.dart' as _i2;
import 'package:flutter_issue_tracker/data/graphql/labels.var.gql.dart' as _i3;
import 'package:flutter_issue_tracker/data/graphql/serializers.gql.dart' as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'labels.req.gql.g.dart';

abstract class GFetchAllLabelsReq
    implements
        Built<GFetchAllLabelsReq, GFetchAllLabelsReqBuilder>,
        _i1.OperationRequest<_i2.GFetchAllLabelsData, _i3.GFetchAllLabelsVars> {
  GFetchAllLabelsReq._();

  factory GFetchAllLabelsReq([Function(GFetchAllLabelsReqBuilder b) updates]) =
      _$GFetchAllLabelsReq;

  static void _initializeBuilder(GFetchAllLabelsReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'FetchAllLabels')
    ..executeOnListen = true;
  _i3.GFetchAllLabelsVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  @nullable
  String get requestId;
  @nullable
  @BuiltValueField(serialize: false)
  _i2.GFetchAllLabelsData Function(
      _i2.GFetchAllLabelsData, _i2.GFetchAllLabelsData) get updateResult;
  @nullable
  _i2.GFetchAllLabelsData get optimisticResponse;
  @nullable
  String get updateCacheHandlerKey;
  @nullable
  Map<String, dynamic> get updateCacheHandlerContext;
  @nullable
  _i1.FetchPolicy get fetchPolicy;
  @nullable
  bool get executeOnListen;
  @override
  _i2.GFetchAllLabelsData parseData(Map<String, dynamic> json) =>
      _i2.GFetchAllLabelsData.fromJson(json);
  static Serializer<GFetchAllLabelsReq> get serializer =>
      _$gFetchAllLabelsReqSerializer;
  Map<String, dynamic> toJson() =>
      _i6.serializers.serializeWith(GFetchAllLabelsReq.serializer, this);
  static GFetchAllLabelsReq fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GFetchAllLabelsReq.serializer, json);
}
