// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_issue_tracker/data/graphql/serializers.gql.dart' as _i1;

part 'labels.data.gql.g.dart';

abstract class GFetchAllLabelsData
    implements Built<GFetchAllLabelsData, GFetchAllLabelsDataBuilder> {
  GFetchAllLabelsData._();

  factory GFetchAllLabelsData(
      [Function(GFetchAllLabelsDataBuilder b) updates]) = _$GFetchAllLabelsData;

  static void _initializeBuilder(GFetchAllLabelsDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @nullable
  GFetchAllLabelsData_repository get repository;
  static Serializer<GFetchAllLabelsData> get serializer =>
      _$gFetchAllLabelsDataSerializer;
  Map<String, dynamic> toJson() =>
      _i1.serializers.serializeWith(GFetchAllLabelsData.serializer, this);
  static GFetchAllLabelsData fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFetchAllLabelsData.serializer, json);
}

abstract class GFetchAllLabelsData_repository
    implements
        Built<GFetchAllLabelsData_repository,
            GFetchAllLabelsData_repositoryBuilder> {
  GFetchAllLabelsData_repository._();

  factory GFetchAllLabelsData_repository(
          [Function(GFetchAllLabelsData_repositoryBuilder b) updates]) =
      _$GFetchAllLabelsData_repository;

  static void _initializeBuilder(GFetchAllLabelsData_repositoryBuilder b) =>
      b..G__typename = 'Repository';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @nullable
  GFetchAllLabelsData_repository_labels get labels;
  static Serializer<GFetchAllLabelsData_repository> get serializer =>
      _$gFetchAllLabelsDataRepositorySerializer;
  Map<String, dynamic> toJson() => _i1.serializers
      .serializeWith(GFetchAllLabelsData_repository.serializer, this);
  static GFetchAllLabelsData_repository fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GFetchAllLabelsData_repository.serializer, json);
}

abstract class GFetchAllLabelsData_repository_labels
    implements
        Built<GFetchAllLabelsData_repository_labels,
            GFetchAllLabelsData_repository_labelsBuilder> {
  GFetchAllLabelsData_repository_labels._();

  factory GFetchAllLabelsData_repository_labels(
          [Function(GFetchAllLabelsData_repository_labelsBuilder b) updates]) =
      _$GFetchAllLabelsData_repository_labels;

  static void _initializeBuilder(
          GFetchAllLabelsData_repository_labelsBuilder b) =>
      b..G__typename = 'LabelConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GFetchAllLabelsData_repository_labels_pageInfo get pageInfo;
  @nullable
  BuiltList<GFetchAllLabelsData_repository_labels_edges> get edges;
  static Serializer<GFetchAllLabelsData_repository_labels> get serializer =>
      _$gFetchAllLabelsDataRepositoryLabelsSerializer;
  Map<String, dynamic> toJson() => _i1.serializers
      .serializeWith(GFetchAllLabelsData_repository_labels.serializer, this);
  static GFetchAllLabelsData_repository_labels fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFetchAllLabelsData_repository_labels.serializer, json);
}

abstract class GFetchAllLabelsData_repository_labels_pageInfo
    implements
        Built<GFetchAllLabelsData_repository_labels_pageInfo,
            GFetchAllLabelsData_repository_labels_pageInfoBuilder> {
  GFetchAllLabelsData_repository_labels_pageInfo._();

  factory GFetchAllLabelsData_repository_labels_pageInfo(
      [Function(GFetchAllLabelsData_repository_labels_pageInfoBuilder b)
          updates]) = _$GFetchAllLabelsData_repository_labels_pageInfo;

  static void _initializeBuilder(
          GFetchAllLabelsData_repository_labels_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get hasPreviousPage;
  bool get hasNextPage;
  @nullable
  String get endCursor;
  static Serializer<GFetchAllLabelsData_repository_labels_pageInfo>
      get serializer => _$gFetchAllLabelsDataRepositoryLabelsPageInfoSerializer;
  Map<String, dynamic> toJson() => _i1.serializers.serializeWith(
      GFetchAllLabelsData_repository_labels_pageInfo.serializer, this);
  static GFetchAllLabelsData_repository_labels_pageInfo fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFetchAllLabelsData_repository_labels_pageInfo.serializer, json);
}

abstract class GFetchAllLabelsData_repository_labels_edges
    implements
        Built<GFetchAllLabelsData_repository_labels_edges,
            GFetchAllLabelsData_repository_labels_edgesBuilder> {
  GFetchAllLabelsData_repository_labels_edges._();

  factory GFetchAllLabelsData_repository_labels_edges(
      [Function(GFetchAllLabelsData_repository_labels_edgesBuilder b)
          updates]) = _$GFetchAllLabelsData_repository_labels_edges;

  static void _initializeBuilder(
          GFetchAllLabelsData_repository_labels_edgesBuilder b) =>
      b..G__typename = 'LabelEdge';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @nullable
  GFetchAllLabelsData_repository_labels_edges_node get node;
  static Serializer<GFetchAllLabelsData_repository_labels_edges>
      get serializer => _$gFetchAllLabelsDataRepositoryLabelsEdgesSerializer;
  Map<String, dynamic> toJson() => _i1.serializers.serializeWith(
      GFetchAllLabelsData_repository_labels_edges.serializer, this);
  static GFetchAllLabelsData_repository_labels_edges fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFetchAllLabelsData_repository_labels_edges.serializer, json);
}

abstract class GFetchAllLabelsData_repository_labels_edges_node
    implements
        Built<GFetchAllLabelsData_repository_labels_edges_node,
            GFetchAllLabelsData_repository_labels_edges_nodeBuilder> {
  GFetchAllLabelsData_repository_labels_edges_node._();

  factory GFetchAllLabelsData_repository_labels_edges_node(
      [Function(GFetchAllLabelsData_repository_labels_edges_nodeBuilder b)
          updates]) = _$GFetchAllLabelsData_repository_labels_edges_node;

  static void _initializeBuilder(
          GFetchAllLabelsData_repository_labels_edges_nodeBuilder b) =>
      b..G__typename = 'Label';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  static Serializer<GFetchAllLabelsData_repository_labels_edges_node>
      get serializer =>
          _$gFetchAllLabelsDataRepositoryLabelsEdgesNodeSerializer;
  Map<String, dynamic> toJson() => _i1.serializers.serializeWith(
      GFetchAllLabelsData_repository_labels_edges_node.serializer, this);
  static GFetchAllLabelsData_repository_labels_edges_node fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFetchAllLabelsData_repository_labels_edges_node.serializer, json);
}
