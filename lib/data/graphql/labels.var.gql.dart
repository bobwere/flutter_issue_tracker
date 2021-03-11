// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_issue_tracker/data/graphql/serializers.gql.dart' as _i1;

part 'labels.var.gql.g.dart';

abstract class GFetchAllLabelsVars
    implements Built<GFetchAllLabelsVars, GFetchAllLabelsVarsBuilder> {
  GFetchAllLabelsVars._();

  factory GFetchAllLabelsVars(
      [Function(GFetchAllLabelsVarsBuilder b) updates]) = _$GFetchAllLabelsVars;

  @nullable
  String get endCursor;
  static Serializer<GFetchAllLabelsVars> get serializer =>
      _$gFetchAllLabelsVarsSerializer;
  Map<String, dynamic> toJson() =>
      _i1.serializers.serializeWith(GFetchAllLabelsVars.serializer, this);
  static GFetchAllLabelsVars fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFetchAllLabelsVars.serializer, json);
}
