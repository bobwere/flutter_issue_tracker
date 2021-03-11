// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_issue_tracker/data/graphql/schema.docs.schema.gql.dart'
    as _i3;
import 'package:flutter_issue_tracker/data/graphql/serializers.gql.dart' as _i1;
import 'package:gql_code_builder/src/serializers/inline_fragment_serializer.dart'
    as _i2;

part 'search.data.gql.g.dart';

abstract class GFetchSearchResultsData
    implements Built<GFetchSearchResultsData, GFetchSearchResultsDataBuilder> {
  GFetchSearchResultsData._();

  factory GFetchSearchResultsData(
          [Function(GFetchSearchResultsDataBuilder b) updates]) =
      _$GFetchSearchResultsData;

  static void _initializeBuilder(GFetchSearchResultsDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GFetchSearchResultsData_search get search;
  static Serializer<GFetchSearchResultsData> get serializer =>
      _$gFetchSearchResultsDataSerializer;
  Map<String, dynamic> toJson() =>
      _i1.serializers.serializeWith(GFetchSearchResultsData.serializer, this);
  static GFetchSearchResultsData fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFetchSearchResultsData.serializer, json);
}

abstract class GFetchSearchResultsData_search
    implements
        Built<GFetchSearchResultsData_search,
            GFetchSearchResultsData_searchBuilder> {
  GFetchSearchResultsData_search._();

  factory GFetchSearchResultsData_search(
          [Function(GFetchSearchResultsData_searchBuilder b) updates]) =
      _$GFetchSearchResultsData_search;

  static void _initializeBuilder(GFetchSearchResultsData_searchBuilder b) =>
      b..G__typename = 'SearchResultItemConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get issueCount;
  GFetchSearchResultsData_search_pageInfo get pageInfo;
  @nullable
  BuiltList<GFetchSearchResultsData_search_edges> get edges;
  static Serializer<GFetchSearchResultsData_search> get serializer =>
      _$gFetchSearchResultsDataSearchSerializer;
  Map<String, dynamic> toJson() => _i1.serializers
      .serializeWith(GFetchSearchResultsData_search.serializer, this);
  static GFetchSearchResultsData_search fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GFetchSearchResultsData_search.serializer, json);
}

abstract class GFetchSearchResultsData_search_pageInfo
    implements
        Built<GFetchSearchResultsData_search_pageInfo,
            GFetchSearchResultsData_search_pageInfoBuilder> {
  GFetchSearchResultsData_search_pageInfo._();

  factory GFetchSearchResultsData_search_pageInfo(
      [Function(GFetchSearchResultsData_search_pageInfoBuilder b)
          updates]) = _$GFetchSearchResultsData_search_pageInfo;

  static void _initializeBuilder(
          GFetchSearchResultsData_search_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @nullable
  String get startCursor;
  @nullable
  String get endCursor;
  bool get hasNextPage;
  bool get hasPreviousPage;
  static Serializer<GFetchSearchResultsData_search_pageInfo> get serializer =>
      _$gFetchSearchResultsDataSearchPageInfoSerializer;
  Map<String, dynamic> toJson() => _i1.serializers
      .serializeWith(GFetchSearchResultsData_search_pageInfo.serializer, this);
  static GFetchSearchResultsData_search_pageInfo fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFetchSearchResultsData_search_pageInfo.serializer, json);
}

abstract class GFetchSearchResultsData_search_edges
    implements
        Built<GFetchSearchResultsData_search_edges,
            GFetchSearchResultsData_search_edgesBuilder> {
  GFetchSearchResultsData_search_edges._();

  factory GFetchSearchResultsData_search_edges(
          [Function(GFetchSearchResultsData_search_edgesBuilder b) updates]) =
      _$GFetchSearchResultsData_search_edges;

  static void _initializeBuilder(
          GFetchSearchResultsData_search_edgesBuilder b) =>
      b..G__typename = 'SearchResultItemEdge';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get cursor;
  @nullable
  GFetchSearchResultsData_search_edges_node get node;
  static Serializer<GFetchSearchResultsData_search_edges> get serializer =>
      _$gFetchSearchResultsDataSearchEdgesSerializer;
  Map<String, dynamic> toJson() => _i1.serializers
      .serializeWith(GFetchSearchResultsData_search_edges.serializer, this);
  static GFetchSearchResultsData_search_edges fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFetchSearchResultsData_search_edges.serializer, json);
}

abstract class GFetchSearchResultsData_search_edges_node {
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  static Serializer<GFetchSearchResultsData_search_edges_node> get serializer =>
      _i2.InlineFragmentSerializer<GFetchSearchResultsData_search_edges_node>(
          'GFetchSearchResultsData_search_edges_node',
          GFetchSearchResultsData_search_edges_node__base,
          [GFetchSearchResultsData_search_edges_node__asIssue]);
  Map<String, dynamic> toJson() => _i1.serializers.serializeWith(
      GFetchSearchResultsData_search_edges_node.serializer, this);
  static GFetchSearchResultsData_search_edges_node fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFetchSearchResultsData_search_edges_node.serializer, json);
}

abstract class GFetchSearchResultsData_search_edges_node__base
    implements
        Built<GFetchSearchResultsData_search_edges_node__base,
            GFetchSearchResultsData_search_edges_node__baseBuilder>,
        GFetchSearchResultsData_search_edges_node {
  GFetchSearchResultsData_search_edges_node__base._();

  factory GFetchSearchResultsData_search_edges_node__base(
      [Function(GFetchSearchResultsData_search_edges_node__baseBuilder b)
          updates]) = _$GFetchSearchResultsData_search_edges_node__base;

  static void _initializeBuilder(
          GFetchSearchResultsData_search_edges_node__baseBuilder b) =>
      b..G__typename = 'SearchResultItem';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  static Serializer<GFetchSearchResultsData_search_edges_node__base>
      get serializer => _$gFetchSearchResultsDataSearchEdgesNodeBaseSerializer;
  Map<String, dynamic> toJson() => _i1.serializers.serializeWith(
      GFetchSearchResultsData_search_edges_node__base.serializer, this);
  static GFetchSearchResultsData_search_edges_node__base fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFetchSearchResultsData_search_edges_node__base.serializer, json);
}

abstract class GFetchSearchResultsData_search_edges_node__asIssue
    implements
        Built<GFetchSearchResultsData_search_edges_node__asIssue,
            GFetchSearchResultsData_search_edges_node__asIssueBuilder>,
        GFetchSearchResultsData_search_edges_node {
  GFetchSearchResultsData_search_edges_node__asIssue._();

  factory GFetchSearchResultsData_search_edges_node__asIssue(
      [Function(GFetchSearchResultsData_search_edges_node__asIssueBuilder b)
          updates]) = _$GFetchSearchResultsData_search_edges_node__asIssue;

  static void _initializeBuilder(
          GFetchSearchResultsData_search_edges_node__asIssueBuilder b) =>
      b..G__typename = 'Issue';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i3.GIssueState get state;
  String get body;
  @nullable
  GFetchSearchResultsData_search_edges_node__asIssue_labels get labels;
  _i3.GDateTime get createdAt;
  _i3.GDateTime get updatedAt;
  String get title;
  int get number;
  @nullable
  GFetchSearchResultsData_search_edges_node__asIssue_author get author;
  GFetchSearchResultsData_search_edges_node__asIssue_comments get comments;
  static Serializer<GFetchSearchResultsData_search_edges_node__asIssue>
      get serializer =>
          _$gFetchSearchResultsDataSearchEdgesNodeAsIssueSerializer;
  Map<String, dynamic> toJson() => _i1.serializers.serializeWith(
      GFetchSearchResultsData_search_edges_node__asIssue.serializer, this);
  static GFetchSearchResultsData_search_edges_node__asIssue fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFetchSearchResultsData_search_edges_node__asIssue.serializer, json);
}

abstract class GFetchSearchResultsData_search_edges_node__asIssue_labels
    implements
        Built<GFetchSearchResultsData_search_edges_node__asIssue_labels,
            GFetchSearchResultsData_search_edges_node__asIssue_labelsBuilder> {
  GFetchSearchResultsData_search_edges_node__asIssue_labels._();

  factory GFetchSearchResultsData_search_edges_node__asIssue_labels(
      [Function(
              GFetchSearchResultsData_search_edges_node__asIssue_labelsBuilder
                  b)
          updates]) = _$GFetchSearchResultsData_search_edges_node__asIssue_labels;

  static void _initializeBuilder(
          GFetchSearchResultsData_search_edges_node__asIssue_labelsBuilder b) =>
      b..G__typename = 'LabelConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get totalCount;
  GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfo
      get pageInfo;
  @nullable
  BuiltList<GFetchSearchResultsData_search_edges_node__asIssue_labels_edges>
      get edges;
  static Serializer<GFetchSearchResultsData_search_edges_node__asIssue_labels>
      get serializer =>
          _$gFetchSearchResultsDataSearchEdgesNodeAsIssueLabelsSerializer;
  Map<String, dynamic> toJson() => _i1.serializers.serializeWith(
      GFetchSearchResultsData_search_edges_node__asIssue_labels.serializer,
      this);
  static GFetchSearchResultsData_search_edges_node__asIssue_labels fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFetchSearchResultsData_search_edges_node__asIssue_labels.serializer,
          json);
}

abstract class GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfo
    implements
        Built<
            GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfo,
            GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfoBuilder> {
  GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfo._();

  factory GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfo(
          [Function(
                  GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfoBuilder
                      b)
              updates]) =
      _$GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfo;

  static void _initializeBuilder(
          GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfoBuilder
              b) =>
      b..G__typename = 'PageInfo';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @nullable
  String get startCursor;
  @nullable
  String get endCursor;
  bool get hasNextPage;
  bool get hasPreviousPage;
  static Serializer<
          GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfo>
      get serializer =>
          _$gFetchSearchResultsDataSearchEdgesNodeAsIssueLabelsPageInfoSerializer;
  Map<String, dynamic> toJson() => _i1.serializers.serializeWith(
      GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfo
          .serializer,
      this);
  static GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfo
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfo
              .serializer,
          json);
}

abstract class GFetchSearchResultsData_search_edges_node__asIssue_labels_edges
    implements
        Built<GFetchSearchResultsData_search_edges_node__asIssue_labels_edges,
            GFetchSearchResultsData_search_edges_node__asIssue_labels_edgesBuilder> {
  GFetchSearchResultsData_search_edges_node__asIssue_labels_edges._();

  factory GFetchSearchResultsData_search_edges_node__asIssue_labels_edges(
          [Function(
                  GFetchSearchResultsData_search_edges_node__asIssue_labels_edgesBuilder
                      b)
              updates]) =
      _$GFetchSearchResultsData_search_edges_node__asIssue_labels_edges;

  static void _initializeBuilder(
          GFetchSearchResultsData_search_edges_node__asIssue_labels_edgesBuilder
              b) =>
      b..G__typename = 'LabelEdge';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @nullable
  GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_node get node;
  static Serializer<
          GFetchSearchResultsData_search_edges_node__asIssue_labels_edges>
      get serializer =>
          _$gFetchSearchResultsDataSearchEdgesNodeAsIssueLabelsEdgesSerializer;
  Map<String, dynamic> toJson() => _i1.serializers.serializeWith(
      GFetchSearchResultsData_search_edges_node__asIssue_labels_edges
          .serializer,
      this);
  static GFetchSearchResultsData_search_edges_node__asIssue_labels_edges
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GFetchSearchResultsData_search_edges_node__asIssue_labels_edges
              .serializer,
          json);
}

abstract class GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_node
    implements
        Built<
            GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_node,
            GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_nodeBuilder> {
  GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_node._();

  factory GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_node(
          [Function(
                  GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_nodeBuilder
                      b)
              updates]) =
      _$GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_node;

  static void _initializeBuilder(
          GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_nodeBuilder
              b) =>
      b..G__typename = 'Label';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String get color;
  static Serializer<
          GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_node>
      get serializer =>
          _$gFetchSearchResultsDataSearchEdgesNodeAsIssueLabelsEdgesNodeSerializer;
  Map<String, dynamic> toJson() => _i1.serializers.serializeWith(
      GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_node
          .serializer,
      this);
  static GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_node
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_node
              .serializer,
          json);
}

abstract class GFetchSearchResultsData_search_edges_node__asIssue_author
    implements
        Built<GFetchSearchResultsData_search_edges_node__asIssue_author,
            GFetchSearchResultsData_search_edges_node__asIssue_authorBuilder> {
  GFetchSearchResultsData_search_edges_node__asIssue_author._();

  factory GFetchSearchResultsData_search_edges_node__asIssue_author(
      [Function(
              GFetchSearchResultsData_search_edges_node__asIssue_authorBuilder
                  b)
          updates]) = _$GFetchSearchResultsData_search_edges_node__asIssue_author;

  static void _initializeBuilder(
          GFetchSearchResultsData_search_edges_node__asIssue_authorBuilder b) =>
      b..G__typename = 'Actor';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get login;
  _i3.GURI get avatarUrl;
  static Serializer<GFetchSearchResultsData_search_edges_node__asIssue_author>
      get serializer =>
          _$gFetchSearchResultsDataSearchEdgesNodeAsIssueAuthorSerializer;
  Map<String, dynamic> toJson() => _i1.serializers.serializeWith(
      GFetchSearchResultsData_search_edges_node__asIssue_author.serializer,
      this);
  static GFetchSearchResultsData_search_edges_node__asIssue_author fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFetchSearchResultsData_search_edges_node__asIssue_author.serializer,
          json);
}

abstract class GFetchSearchResultsData_search_edges_node__asIssue_comments
    implements
        Built<GFetchSearchResultsData_search_edges_node__asIssue_comments,
            GFetchSearchResultsData_search_edges_node__asIssue_commentsBuilder> {
  GFetchSearchResultsData_search_edges_node__asIssue_comments._();

  factory GFetchSearchResultsData_search_edges_node__asIssue_comments(
      [Function(
              GFetchSearchResultsData_search_edges_node__asIssue_commentsBuilder
                  b)
          updates]) = _$GFetchSearchResultsData_search_edges_node__asIssue_comments;

  static void _initializeBuilder(
          GFetchSearchResultsData_search_edges_node__asIssue_commentsBuilder
              b) =>
      b..G__typename = 'IssueCommentConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get totalCount;
  GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfo
      get pageInfo;
  @nullable
  BuiltList<GFetchSearchResultsData_search_edges_node__asIssue_comments_edges>
      get edges;
  static Serializer<GFetchSearchResultsData_search_edges_node__asIssue_comments>
      get serializer =>
          _$gFetchSearchResultsDataSearchEdgesNodeAsIssueCommentsSerializer;
  Map<String, dynamic> toJson() => _i1.serializers.serializeWith(
      GFetchSearchResultsData_search_edges_node__asIssue_comments.serializer,
      this);
  static GFetchSearchResultsData_search_edges_node__asIssue_comments fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFetchSearchResultsData_search_edges_node__asIssue_comments
              .serializer,
          json);
}

abstract class GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfo
    implements
        Built<
            GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfo,
            GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfoBuilder> {
  GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfo._();

  factory GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfo(
          [Function(
                  GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfoBuilder
                      b)
              updates]) =
      _$GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfo;

  static void _initializeBuilder(
          GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfoBuilder
              b) =>
      b..G__typename = 'PageInfo';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @nullable
  String get startCursor;
  @nullable
  String get endCursor;
  bool get hasNextPage;
  bool get hasPreviousPage;
  static Serializer<
          GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfo>
      get serializer =>
          _$gFetchSearchResultsDataSearchEdgesNodeAsIssueCommentsPageInfoSerializer;
  Map<String, dynamic> toJson() => _i1.serializers.serializeWith(
      GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfo
          .serializer,
      this);
  static GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfo
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfo
              .serializer,
          json);
}

abstract class GFetchSearchResultsData_search_edges_node__asIssue_comments_edges
    implements
        Built<GFetchSearchResultsData_search_edges_node__asIssue_comments_edges,
            GFetchSearchResultsData_search_edges_node__asIssue_comments_edgesBuilder> {
  GFetchSearchResultsData_search_edges_node__asIssue_comments_edges._();

  factory GFetchSearchResultsData_search_edges_node__asIssue_comments_edges(
          [Function(
                  GFetchSearchResultsData_search_edges_node__asIssue_comments_edgesBuilder
                      b)
              updates]) =
      _$GFetchSearchResultsData_search_edges_node__asIssue_comments_edges;

  static void _initializeBuilder(
          GFetchSearchResultsData_search_edges_node__asIssue_comments_edgesBuilder
              b) =>
      b..G__typename = 'IssueCommentEdge';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get cursor;
  @nullable
  GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node
      get node;
  static Serializer<
          GFetchSearchResultsData_search_edges_node__asIssue_comments_edges>
      get serializer =>
          _$gFetchSearchResultsDataSearchEdgesNodeAsIssueCommentsEdgesSerializer;
  Map<String, dynamic> toJson() => _i1.serializers.serializeWith(
      GFetchSearchResultsData_search_edges_node__asIssue_comments_edges
          .serializer,
      this);
  static GFetchSearchResultsData_search_edges_node__asIssue_comments_edges
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GFetchSearchResultsData_search_edges_node__asIssue_comments_edges
              .serializer,
          json);
}

abstract class GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node
    implements
        Built<
            GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node,
            GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_nodeBuilder> {
  GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node._();

  factory GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node(
          [Function(
                  GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_nodeBuilder
                      b)
              updates]) =
      _$GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node;

  static void _initializeBuilder(
          GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_nodeBuilder
              b) =>
      b..G__typename = 'IssueComment';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i3.GDateTime get createdAt;
  String get body;
  @nullable
  GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_author
      get author;
  static Serializer<
          GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node>
      get serializer =>
          _$gFetchSearchResultsDataSearchEdgesNodeAsIssueCommentsEdgesNodeSerializer;
  Map<String, dynamic> toJson() => _i1.serializers.serializeWith(
      GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node
          .serializer,
      this);
  static GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node
              .serializer,
          json);
}

abstract class GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_author
    implements
        Built<
            GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_author,
            GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_authorBuilder> {
  GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_author._();

  factory GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_author(
          [Function(
                  GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_authorBuilder
                      b)
              updates]) =
      _$GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_author;

  static void _initializeBuilder(
          GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_authorBuilder
              b) =>
      b..G__typename = 'Actor';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i3.GURI get avatarUrl;
  String get login;
  static Serializer<
          GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_author>
      get serializer =>
          _$gFetchSearchResultsDataSearchEdgesNodeAsIssueCommentsEdgesNodeAuthorSerializer;
  Map<String, dynamic> toJson() => _i1.serializers.serializeWith(
      GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_author
          .serializer,
      this);
  static GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_author
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_author
              .serializer,
          json);
}
