// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFetchSearchResultsData> _$gFetchSearchResultsDataSerializer =
    new _$GFetchSearchResultsDataSerializer();
Serializer<GFetchSearchResultsData_search>
    _$gFetchSearchResultsDataSearchSerializer =
    new _$GFetchSearchResultsData_searchSerializer();
Serializer<GFetchSearchResultsData_search_pageInfo>
    _$gFetchSearchResultsDataSearchPageInfoSerializer =
    new _$GFetchSearchResultsData_search_pageInfoSerializer();
Serializer<GFetchSearchResultsData_search_edges>
    _$gFetchSearchResultsDataSearchEdgesSerializer =
    new _$GFetchSearchResultsData_search_edgesSerializer();
Serializer<GFetchSearchResultsData_search_edges_node__base>
    _$gFetchSearchResultsDataSearchEdgesNodeBaseSerializer =
    new _$GFetchSearchResultsData_search_edges_node__baseSerializer();
Serializer<GFetchSearchResultsData_search_edges_node__asIssue>
    _$gFetchSearchResultsDataSearchEdgesNodeAsIssueSerializer =
    new _$GFetchSearchResultsData_search_edges_node__asIssueSerializer();
Serializer<GFetchSearchResultsData_search_edges_node__asIssue_labels>
    _$gFetchSearchResultsDataSearchEdgesNodeAsIssueLabelsSerializer =
    new _$GFetchSearchResultsData_search_edges_node__asIssue_labelsSerializer();
Serializer<GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfo>
    _$gFetchSearchResultsDataSearchEdgesNodeAsIssueLabelsPageInfoSerializer =
    new _$GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfoSerializer();
Serializer<GFetchSearchResultsData_search_edges_node__asIssue_labels_edges>
    _$gFetchSearchResultsDataSearchEdgesNodeAsIssueLabelsEdgesSerializer =
    new _$GFetchSearchResultsData_search_edges_node__asIssue_labels_edgesSerializer();
Serializer<GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_node>
    _$gFetchSearchResultsDataSearchEdgesNodeAsIssueLabelsEdgesNodeSerializer =
    new _$GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_nodeSerializer();
Serializer<GFetchSearchResultsData_search_edges_node__asIssue_author>
    _$gFetchSearchResultsDataSearchEdgesNodeAsIssueAuthorSerializer =
    new _$GFetchSearchResultsData_search_edges_node__asIssue_authorSerializer();
Serializer<GFetchSearchResultsData_search_edges_node__asIssue_comments>
    _$gFetchSearchResultsDataSearchEdgesNodeAsIssueCommentsSerializer =
    new _$GFetchSearchResultsData_search_edges_node__asIssue_commentsSerializer();
Serializer<GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfo>
    _$gFetchSearchResultsDataSearchEdgesNodeAsIssueCommentsPageInfoSerializer =
    new _$GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfoSerializer();
Serializer<GFetchSearchResultsData_search_edges_node__asIssue_comments_edges>
    _$gFetchSearchResultsDataSearchEdgesNodeAsIssueCommentsEdgesSerializer =
    new _$GFetchSearchResultsData_search_edges_node__asIssue_comments_edgesSerializer();
Serializer<
        GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node>
    _$gFetchSearchResultsDataSearchEdgesNodeAsIssueCommentsEdgesNodeSerializer =
    new _$GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_nodeSerializer();
Serializer<
        GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_author>
    _$gFetchSearchResultsDataSearchEdgesNodeAsIssueCommentsEdgesNodeAuthorSerializer =
    new _$GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_authorSerializer();

class _$GFetchSearchResultsDataSerializer
    implements StructuredSerializer<GFetchSearchResultsData> {
  @override
  final Iterable<Type> types = const [
    GFetchSearchResultsData,
    _$GFetchSearchResultsData
  ];
  @override
  final String wireName = 'GFetchSearchResultsData';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GFetchSearchResultsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'search',
      serializers.serialize(object.search,
          specifiedType: const FullType(GFetchSearchResultsData_search)),
    ];

    return result;
  }

  @override
  GFetchSearchResultsData deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFetchSearchResultsDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'search':
          result.search.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GFetchSearchResultsData_search))
              as GFetchSearchResultsData_search);
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchSearchResultsData_searchSerializer
    implements StructuredSerializer<GFetchSearchResultsData_search> {
  @override
  final Iterable<Type> types = const [
    GFetchSearchResultsData_search,
    _$GFetchSearchResultsData_search
  ];
  @override
  final String wireName = 'GFetchSearchResultsData_search';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GFetchSearchResultsData_search object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'issueCount',
      serializers.serialize(object.issueCount,
          specifiedType: const FullType(int)),
      'pageInfo',
      serializers.serialize(object.pageInfo,
          specifiedType:
              const FullType(GFetchSearchResultsData_search_pageInfo)),
    ];
    if (object.edges != null) {
      result
        ..add('edges')
        ..add(serializers.serialize(object.edges,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GFetchSearchResultsData_search_edges)])));
    }
    return result;
  }

  @override
  GFetchSearchResultsData_search deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFetchSearchResultsData_searchBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'issueCount':
          result.issueCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'pageInfo':
          result.pageInfo.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GFetchSearchResultsData_search_pageInfo))
              as GFetchSearchResultsData_search_pageInfo);
          break;
        case 'edges':
          result.edges.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GFetchSearchResultsData_search_edges)
              ])) as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchSearchResultsData_search_pageInfoSerializer
    implements StructuredSerializer<GFetchSearchResultsData_search_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GFetchSearchResultsData_search_pageInfo,
    _$GFetchSearchResultsData_search_pageInfo
  ];
  @override
  final String wireName = 'GFetchSearchResultsData_search_pageInfo';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GFetchSearchResultsData_search_pageInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'hasNextPage',
      serializers.serialize(object.hasNextPage,
          specifiedType: const FullType(bool)),
      'hasPreviousPage',
      serializers.serialize(object.hasPreviousPage,
          specifiedType: const FullType(bool)),
    ];
    if (object.startCursor != null) {
      result
        ..add('startCursor')
        ..add(serializers.serialize(object.startCursor,
            specifiedType: const FullType(String)));
    }
    if (object.endCursor != null) {
      result
        ..add('endCursor')
        ..add(serializers.serialize(object.endCursor,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GFetchSearchResultsData_search_pageInfo deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFetchSearchResultsData_search_pageInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'startCursor':
          result.startCursor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'endCursor':
          result.endCursor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'hasNextPage':
          result.hasNextPage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'hasPreviousPage':
          result.hasPreviousPage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchSearchResultsData_search_edgesSerializer
    implements StructuredSerializer<GFetchSearchResultsData_search_edges> {
  @override
  final Iterable<Type> types = const [
    GFetchSearchResultsData_search_edges,
    _$GFetchSearchResultsData_search_edges
  ];
  @override
  final String wireName = 'GFetchSearchResultsData_search_edges';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GFetchSearchResultsData_search_edges object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'cursor',
      serializers.serialize(object.cursor,
          specifiedType: const FullType(String)),
    ];
    if (object.node != null) {
      result
        ..add('node')
        ..add(serializers.serialize(object.node,
            specifiedType:
                const FullType(GFetchSearchResultsData_search_edges_node)));
    }
    return result;
  }

  @override
  GFetchSearchResultsData_search_edges deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFetchSearchResultsData_search_edgesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cursor':
          result.cursor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'node':
          result.node = serializers.deserialize(value,
                  specifiedType:
                      const FullType(GFetchSearchResultsData_search_edges_node))
              as GFetchSearchResultsData_search_edges_node;
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchSearchResultsData_search_edges_node__baseSerializer
    implements
        StructuredSerializer<GFetchSearchResultsData_search_edges_node__base> {
  @override
  final Iterable<Type> types = const [
    GFetchSearchResultsData_search_edges_node__base,
    _$GFetchSearchResultsData_search_edges_node__base
  ];
  @override
  final String wireName = 'GFetchSearchResultsData_search_edges_node__base';

  @override
  Iterable<Object> serialize(Serializers serializers,
      GFetchSearchResultsData_search_edges_node__base object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GFetchSearchResultsData_search_edges_node__base deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFetchSearchResultsData_search_edges_node__baseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchSearchResultsData_search_edges_node__asIssueSerializer
    implements
        StructuredSerializer<
            GFetchSearchResultsData_search_edges_node__asIssue> {
  @override
  final Iterable<Type> types = const [
    GFetchSearchResultsData_search_edges_node__asIssue,
    _$GFetchSearchResultsData_search_edges_node__asIssue
  ];
  @override
  final String wireName = 'GFetchSearchResultsData_search_edges_node__asIssue';

  @override
  Iterable<Object> serialize(Serializers serializers,
      GFetchSearchResultsData_search_edges_node__asIssue object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'state',
      serializers.serialize(object.state,
          specifiedType: const FullType(_i3.GIssueState)),
      'body',
      serializers.serialize(object.body, specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(_i3.GDateTime)),
      'updatedAt',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(_i3.GDateTime)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'number',
      serializers.serialize(object.number, specifiedType: const FullType(int)),
      'comments',
      serializers.serialize(object.comments,
          specifiedType: const FullType(
              GFetchSearchResultsData_search_edges_node__asIssue_comments)),
    ];
    if (object.labels != null) {
      result
        ..add('labels')
        ..add(serializers.serialize(object.labels,
            specifiedType: const FullType(
                GFetchSearchResultsData_search_edges_node__asIssue_labels)));
    }
    if (object.author != null) {
      result
        ..add('author')
        ..add(serializers.serialize(object.author,
            specifiedType: const FullType(
                GFetchSearchResultsData_search_edges_node__asIssue_author)));
    }
    return result;
  }

  @override
  GFetchSearchResultsData_search_edges_node__asIssue deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GFetchSearchResultsData_search_edges_node__asIssueBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GIssueState))
              as _i3.GIssueState;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'labels':
          result.labels.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GFetchSearchResultsData_search_edges_node__asIssue_labels))
              as GFetchSearchResultsData_search_edges_node__asIssue_labels);
          break;
        case 'createdAt':
          result.createdAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i3.GDateTime)) as _i3.GDateTime);
          break;
        case 'updatedAt':
          result.updatedAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i3.GDateTime)) as _i3.GDateTime);
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'author':
          result.author.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GFetchSearchResultsData_search_edges_node__asIssue_author))
              as GFetchSearchResultsData_search_edges_node__asIssue_author);
          break;
        case 'comments':
          result.comments.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GFetchSearchResultsData_search_edges_node__asIssue_comments))
              as GFetchSearchResultsData_search_edges_node__asIssue_comments);
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchSearchResultsData_search_edges_node__asIssue_labelsSerializer
    implements
        StructuredSerializer<
            GFetchSearchResultsData_search_edges_node__asIssue_labels> {
  @override
  final Iterable<Type> types = const [
    GFetchSearchResultsData_search_edges_node__asIssue_labels,
    _$GFetchSearchResultsData_search_edges_node__asIssue_labels
  ];
  @override
  final String wireName =
      'GFetchSearchResultsData_search_edges_node__asIssue_labels';

  @override
  Iterable<Object> serialize(Serializers serializers,
      GFetchSearchResultsData_search_edges_node__asIssue_labels object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'totalCount',
      serializers.serialize(object.totalCount,
          specifiedType: const FullType(int)),
      'pageInfo',
      serializers.serialize(object.pageInfo,
          specifiedType: const FullType(
              GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfo)),
    ];
    if (object.edges != null) {
      result
        ..add('edges')
        ..add(serializers.serialize(object.edges,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  GFetchSearchResultsData_search_edges_node__asIssue_labels_edges)
            ])));
    }
    return result;
  }

  @override
  GFetchSearchResultsData_search_edges_node__asIssue_labels deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GFetchSearchResultsData_search_edges_node__asIssue_labelsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'totalCount':
          result.totalCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'pageInfo':
          result.pageInfo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfo))
              as GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfo);
          break;
        case 'edges':
          result.edges.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GFetchSearchResultsData_search_edges_node__asIssue_labels_edges)
              ])) as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfoSerializer
    implements
        StructuredSerializer<
            GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfo,
    _$GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfo
  ];
  @override
  final String wireName =
      'GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfo';

  @override
  Iterable<Object> serialize(Serializers serializers,
      GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'hasNextPage',
      serializers.serialize(object.hasNextPage,
          specifiedType: const FullType(bool)),
      'hasPreviousPage',
      serializers.serialize(object.hasPreviousPage,
          specifiedType: const FullType(bool)),
    ];
    if (object.startCursor != null) {
      result
        ..add('startCursor')
        ..add(serializers.serialize(object.startCursor,
            specifiedType: const FullType(String)));
    }
    if (object.endCursor != null) {
      result
        ..add('endCursor')
        ..add(serializers.serialize(object.endCursor,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfo
      deserialize(Serializers serializers, Iterable<Object> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'startCursor':
          result.startCursor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'endCursor':
          result.endCursor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'hasNextPage':
          result.hasNextPage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'hasPreviousPage':
          result.hasPreviousPage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchSearchResultsData_search_edges_node__asIssue_labels_edgesSerializer
    implements
        StructuredSerializer<
            GFetchSearchResultsData_search_edges_node__asIssue_labels_edges> {
  @override
  final Iterable<Type> types = const [
    GFetchSearchResultsData_search_edges_node__asIssue_labels_edges,
    _$GFetchSearchResultsData_search_edges_node__asIssue_labels_edges
  ];
  @override
  final String wireName =
      'GFetchSearchResultsData_search_edges_node__asIssue_labels_edges';

  @override
  Iterable<Object> serialize(Serializers serializers,
      GFetchSearchResultsData_search_edges_node__asIssue_labels_edges object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    if (object.node != null) {
      result
        ..add('node')
        ..add(serializers.serialize(object.node,
            specifiedType: const FullType(
                GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_node)));
    }
    return result;
  }

  @override
  GFetchSearchResultsData_search_edges_node__asIssue_labels_edges deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GFetchSearchResultsData_search_edges_node__asIssue_labels_edgesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'node':
          result.node.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_node))
              as GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_node);
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_nodeSerializer
    implements
        StructuredSerializer<
            GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_node> {
  @override
  final Iterable<Type> types = const [
    GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_node,
    _$GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_node
  ];
  @override
  final String wireName =
      'GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_node';

  @override
  Iterable<Object> serialize(
      Serializers serializers,
      GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_node
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'color',
      serializers.serialize(object.color,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_node
      deserialize(Serializers serializers, Iterable<Object> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_nodeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchSearchResultsData_search_edges_node__asIssue_authorSerializer
    implements
        StructuredSerializer<
            GFetchSearchResultsData_search_edges_node__asIssue_author> {
  @override
  final Iterable<Type> types = const [
    GFetchSearchResultsData_search_edges_node__asIssue_author,
    _$GFetchSearchResultsData_search_edges_node__asIssue_author
  ];
  @override
  final String wireName =
      'GFetchSearchResultsData_search_edges_node__asIssue_author';

  @override
  Iterable<Object> serialize(Serializers serializers,
      GFetchSearchResultsData_search_edges_node__asIssue_author object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'login',
      serializers.serialize(object.login,
          specifiedType: const FullType(String)),
      'avatarUrl',
      serializers.serialize(object.avatarUrl,
          specifiedType: const FullType(_i3.GURI)),
    ];

    return result;
  }

  @override
  GFetchSearchResultsData_search_edges_node__asIssue_author deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GFetchSearchResultsData_search_edges_node__asIssue_authorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'login':
          result.login = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'avatarUrl':
          result.avatarUrl.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i3.GURI)) as _i3.GURI);
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchSearchResultsData_search_edges_node__asIssue_commentsSerializer
    implements
        StructuredSerializer<
            GFetchSearchResultsData_search_edges_node__asIssue_comments> {
  @override
  final Iterable<Type> types = const [
    GFetchSearchResultsData_search_edges_node__asIssue_comments,
    _$GFetchSearchResultsData_search_edges_node__asIssue_comments
  ];
  @override
  final String wireName =
      'GFetchSearchResultsData_search_edges_node__asIssue_comments';

  @override
  Iterable<Object> serialize(Serializers serializers,
      GFetchSearchResultsData_search_edges_node__asIssue_comments object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'totalCount',
      serializers.serialize(object.totalCount,
          specifiedType: const FullType(int)),
      'pageInfo',
      serializers.serialize(object.pageInfo,
          specifiedType: const FullType(
              GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfo)),
    ];
    if (object.edges != null) {
      result
        ..add('edges')
        ..add(serializers.serialize(object.edges,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  GFetchSearchResultsData_search_edges_node__asIssue_comments_edges)
            ])));
    }
    return result;
  }

  @override
  GFetchSearchResultsData_search_edges_node__asIssue_comments deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GFetchSearchResultsData_search_edges_node__asIssue_commentsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'totalCount':
          result.totalCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'pageInfo':
          result.pageInfo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfo))
              as GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfo);
          break;
        case 'edges':
          result.edges.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GFetchSearchResultsData_search_edges_node__asIssue_comments_edges)
              ])) as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfoSerializer
    implements
        StructuredSerializer<
            GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfo,
    _$GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfo
  ];
  @override
  final String wireName =
      'GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfo';

  @override
  Iterable<Object> serialize(
      Serializers serializers,
      GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfo
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'hasNextPage',
      serializers.serialize(object.hasNextPage,
          specifiedType: const FullType(bool)),
      'hasPreviousPage',
      serializers.serialize(object.hasPreviousPage,
          specifiedType: const FullType(bool)),
    ];
    if (object.startCursor != null) {
      result
        ..add('startCursor')
        ..add(serializers.serialize(object.startCursor,
            specifiedType: const FullType(String)));
    }
    if (object.endCursor != null) {
      result
        ..add('endCursor')
        ..add(serializers.serialize(object.endCursor,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfo
      deserialize(Serializers serializers, Iterable<Object> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'startCursor':
          result.startCursor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'endCursor':
          result.endCursor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'hasNextPage':
          result.hasNextPage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'hasPreviousPage':
          result.hasPreviousPage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchSearchResultsData_search_edges_node__asIssue_comments_edgesSerializer
    implements
        StructuredSerializer<
            GFetchSearchResultsData_search_edges_node__asIssue_comments_edges> {
  @override
  final Iterable<Type> types = const [
    GFetchSearchResultsData_search_edges_node__asIssue_comments_edges,
    _$GFetchSearchResultsData_search_edges_node__asIssue_comments_edges
  ];
  @override
  final String wireName =
      'GFetchSearchResultsData_search_edges_node__asIssue_comments_edges';

  @override
  Iterable<Object> serialize(Serializers serializers,
      GFetchSearchResultsData_search_edges_node__asIssue_comments_edges object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'cursor',
      serializers.serialize(object.cursor,
          specifiedType: const FullType(String)),
    ];
    if (object.node != null) {
      result
        ..add('node')
        ..add(serializers.serialize(object.node,
            specifiedType: const FullType(
                GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node)));
    }
    return result;
  }

  @override
  GFetchSearchResultsData_search_edges_node__asIssue_comments_edges deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GFetchSearchResultsData_search_edges_node__asIssue_comments_edgesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cursor':
          result.cursor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'node':
          result.node.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node))
              as GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node);
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_nodeSerializer
    implements
        StructuredSerializer<
            GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node> {
  @override
  final Iterable<Type> types = const [
    GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node,
    _$GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node
  ];
  @override
  final String wireName =
      'GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node';

  @override
  Iterable<Object> serialize(
      Serializers serializers,
      GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(_i3.GDateTime)),
      'body',
      serializers.serialize(object.body, specifiedType: const FullType(String)),
    ];
    if (object.author != null) {
      result
        ..add('author')
        ..add(serializers.serialize(object.author,
            specifiedType: const FullType(
                GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_author)));
    }
    return result;
  }

  @override
  GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node
      deserialize(Serializers serializers, Iterable<Object> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_nodeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createdAt':
          result.createdAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i3.GDateTime)) as _i3.GDateTime);
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'author':
          result.author.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_author))
              as GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_author);
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_authorSerializer
    implements
        StructuredSerializer<
            GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_author> {
  @override
  final Iterable<Type> types = const [
    GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_author,
    _$GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_author
  ];
  @override
  final String wireName =
      'GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_author';

  @override
  Iterable<Object> serialize(
      Serializers serializers,
      GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_author
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'avatarUrl',
      serializers.serialize(object.avatarUrl,
          specifiedType: const FullType(_i3.GURI)),
      'login',
      serializers.serialize(object.login,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_author
      deserialize(Serializers serializers, Iterable<Object> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_authorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'avatarUrl':
          result.avatarUrl.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i3.GURI)) as _i3.GURI);
          break;
        case 'login':
          result.login = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchSearchResultsData extends GFetchSearchResultsData {
  @override
  final String G__typename;
  @override
  final GFetchSearchResultsData_search search;

  factory _$GFetchSearchResultsData(
          [void Function(GFetchSearchResultsDataBuilder) updates]) =>
      (new GFetchSearchResultsDataBuilder()..update(updates)).build();

  _$GFetchSearchResultsData._({this.G__typename, this.search}) : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData', 'G__typename');
    }
    if (search == null) {
      throw new BuiltValueNullFieldError('GFetchSearchResultsData', 'search');
    }
  }

  @override
  GFetchSearchResultsData rebuild(
          void Function(GFetchSearchResultsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchSearchResultsDataBuilder toBuilder() =>
      new GFetchSearchResultsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchSearchResultsData &&
        G__typename == other.G__typename &&
        search == other.search;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), search.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFetchSearchResultsData')
          ..add('G__typename', G__typename)
          ..add('search', search))
        .toString();
  }
}

class GFetchSearchResultsDataBuilder
    implements
        Builder<GFetchSearchResultsData, GFetchSearchResultsDataBuilder> {
  _$GFetchSearchResultsData _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  GFetchSearchResultsData_searchBuilder _search;
  GFetchSearchResultsData_searchBuilder get search =>
      _$this._search ??= new GFetchSearchResultsData_searchBuilder();
  set search(GFetchSearchResultsData_searchBuilder search) =>
      _$this._search = search;

  GFetchSearchResultsDataBuilder() {
    GFetchSearchResultsData._initializeBuilder(this);
  }

  GFetchSearchResultsDataBuilder get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _search = _$v.search?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchSearchResultsData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GFetchSearchResultsData;
  }

  @override
  void update(void Function(GFetchSearchResultsDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFetchSearchResultsData build() {
    _$GFetchSearchResultsData _$result;
    try {
      _$result = _$v ??
          new _$GFetchSearchResultsData._(
              G__typename: G__typename, search: search.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'search';
        search.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GFetchSearchResultsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFetchSearchResultsData_search extends GFetchSearchResultsData_search {
  @override
  final String G__typename;
  @override
  final int issueCount;
  @override
  final GFetchSearchResultsData_search_pageInfo pageInfo;
  @override
  final BuiltList<GFetchSearchResultsData_search_edges> edges;

  factory _$GFetchSearchResultsData_search(
          [void Function(GFetchSearchResultsData_searchBuilder) updates]) =>
      (new GFetchSearchResultsData_searchBuilder()..update(updates)).build();

  _$GFetchSearchResultsData_search._(
      {this.G__typename, this.issueCount, this.pageInfo, this.edges})
      : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search', 'G__typename');
    }
    if (issueCount == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search', 'issueCount');
    }
    if (pageInfo == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search', 'pageInfo');
    }
  }

  @override
  GFetchSearchResultsData_search rebuild(
          void Function(GFetchSearchResultsData_searchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchSearchResultsData_searchBuilder toBuilder() =>
      new GFetchSearchResultsData_searchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchSearchResultsData_search &&
        G__typename == other.G__typename &&
        issueCount == other.issueCount &&
        pageInfo == other.pageInfo &&
        edges == other.edges;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), issueCount.hashCode),
            pageInfo.hashCode),
        edges.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFetchSearchResultsData_search')
          ..add('G__typename', G__typename)
          ..add('issueCount', issueCount)
          ..add('pageInfo', pageInfo)
          ..add('edges', edges))
        .toString();
  }
}

class GFetchSearchResultsData_searchBuilder
    implements
        Builder<GFetchSearchResultsData_search,
            GFetchSearchResultsData_searchBuilder> {
  _$GFetchSearchResultsData_search _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  int _issueCount;
  int get issueCount => _$this._issueCount;
  set issueCount(int issueCount) => _$this._issueCount = issueCount;

  GFetchSearchResultsData_search_pageInfoBuilder _pageInfo;
  GFetchSearchResultsData_search_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??= new GFetchSearchResultsData_search_pageInfoBuilder();
  set pageInfo(GFetchSearchResultsData_search_pageInfoBuilder pageInfo) =>
      _$this._pageInfo = pageInfo;

  ListBuilder<GFetchSearchResultsData_search_edges> _edges;
  ListBuilder<GFetchSearchResultsData_search_edges> get edges =>
      _$this._edges ??= new ListBuilder<GFetchSearchResultsData_search_edges>();
  set edges(ListBuilder<GFetchSearchResultsData_search_edges> edges) =>
      _$this._edges = edges;

  GFetchSearchResultsData_searchBuilder() {
    GFetchSearchResultsData_search._initializeBuilder(this);
  }

  GFetchSearchResultsData_searchBuilder get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _issueCount = _$v.issueCount;
      _pageInfo = _$v.pageInfo?.toBuilder();
      _edges = _$v.edges?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchSearchResultsData_search other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GFetchSearchResultsData_search;
  }

  @override
  void update(void Function(GFetchSearchResultsData_searchBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFetchSearchResultsData_search build() {
    _$GFetchSearchResultsData_search _$result;
    try {
      _$result = _$v ??
          new _$GFetchSearchResultsData_search._(
              G__typename: G__typename,
              issueCount: issueCount,
              pageInfo: pageInfo.build(),
              edges: _edges?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'pageInfo';
        pageInfo.build();
        _$failedField = 'edges';
        _edges?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GFetchSearchResultsData_search', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFetchSearchResultsData_search_pageInfo
    extends GFetchSearchResultsData_search_pageInfo {
  @override
  final String G__typename;
  @override
  final String startCursor;
  @override
  final String endCursor;
  @override
  final bool hasNextPage;
  @override
  final bool hasPreviousPage;

  factory _$GFetchSearchResultsData_search_pageInfo(
          [void Function(GFetchSearchResultsData_search_pageInfoBuilder)
              updates]) =>
      (new GFetchSearchResultsData_search_pageInfoBuilder()..update(updates))
          .build();

  _$GFetchSearchResultsData_search_pageInfo._(
      {this.G__typename,
      this.startCursor,
      this.endCursor,
      this.hasNextPage,
      this.hasPreviousPage})
      : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_pageInfo', 'G__typename');
    }
    if (hasNextPage == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_pageInfo', 'hasNextPage');
    }
    if (hasPreviousPage == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_pageInfo', 'hasPreviousPage');
    }
  }

  @override
  GFetchSearchResultsData_search_pageInfo rebuild(
          void Function(GFetchSearchResultsData_search_pageInfoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchSearchResultsData_search_pageInfoBuilder toBuilder() =>
      new GFetchSearchResultsData_search_pageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchSearchResultsData_search_pageInfo &&
        G__typename == other.G__typename &&
        startCursor == other.startCursor &&
        endCursor == other.endCursor &&
        hasNextPage == other.hasNextPage &&
        hasPreviousPage == other.hasPreviousPage;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, G__typename.hashCode), startCursor.hashCode),
                endCursor.hashCode),
            hasNextPage.hashCode),
        hasPreviousPage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GFetchSearchResultsData_search_pageInfo')
          ..add('G__typename', G__typename)
          ..add('startCursor', startCursor)
          ..add('endCursor', endCursor)
          ..add('hasNextPage', hasNextPage)
          ..add('hasPreviousPage', hasPreviousPage))
        .toString();
  }
}

class GFetchSearchResultsData_search_pageInfoBuilder
    implements
        Builder<GFetchSearchResultsData_search_pageInfo,
            GFetchSearchResultsData_search_pageInfoBuilder> {
  _$GFetchSearchResultsData_search_pageInfo _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  String _startCursor;
  String get startCursor => _$this._startCursor;
  set startCursor(String startCursor) => _$this._startCursor = startCursor;

  String _endCursor;
  String get endCursor => _$this._endCursor;
  set endCursor(String endCursor) => _$this._endCursor = endCursor;

  bool _hasNextPage;
  bool get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool hasNextPage) => _$this._hasNextPage = hasNextPage;

  bool _hasPreviousPage;
  bool get hasPreviousPage => _$this._hasPreviousPage;
  set hasPreviousPage(bool hasPreviousPage) =>
      _$this._hasPreviousPage = hasPreviousPage;

  GFetchSearchResultsData_search_pageInfoBuilder() {
    GFetchSearchResultsData_search_pageInfo._initializeBuilder(this);
  }

  GFetchSearchResultsData_search_pageInfoBuilder get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _startCursor = _$v.startCursor;
      _endCursor = _$v.endCursor;
      _hasNextPage = _$v.hasNextPage;
      _hasPreviousPage = _$v.hasPreviousPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchSearchResultsData_search_pageInfo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GFetchSearchResultsData_search_pageInfo;
  }

  @override
  void update(
      void Function(GFetchSearchResultsData_search_pageInfoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFetchSearchResultsData_search_pageInfo build() {
    final _$result = _$v ??
        new _$GFetchSearchResultsData_search_pageInfo._(
            G__typename: G__typename,
            startCursor: startCursor,
            endCursor: endCursor,
            hasNextPage: hasNextPage,
            hasPreviousPage: hasPreviousPage);
    replace(_$result);
    return _$result;
  }
}

class _$GFetchSearchResultsData_search_edges
    extends GFetchSearchResultsData_search_edges {
  @override
  final String G__typename;
  @override
  final String cursor;
  @override
  final GFetchSearchResultsData_search_edges_node node;

  factory _$GFetchSearchResultsData_search_edges(
          [void Function(GFetchSearchResultsData_search_edgesBuilder)
              updates]) =>
      (new GFetchSearchResultsData_search_edgesBuilder()..update(updates))
          .build();

  _$GFetchSearchResultsData_search_edges._(
      {this.G__typename, this.cursor, this.node})
      : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_edges', 'G__typename');
    }
    if (cursor == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_edges', 'cursor');
    }
  }

  @override
  GFetchSearchResultsData_search_edges rebuild(
          void Function(GFetchSearchResultsData_search_edgesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchSearchResultsData_search_edgesBuilder toBuilder() =>
      new GFetchSearchResultsData_search_edgesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchSearchResultsData_search_edges &&
        G__typename == other.G__typename &&
        cursor == other.cursor &&
        node == other.node;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, G__typename.hashCode), cursor.hashCode), node.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFetchSearchResultsData_search_edges')
          ..add('G__typename', G__typename)
          ..add('cursor', cursor)
          ..add('node', node))
        .toString();
  }
}

class GFetchSearchResultsData_search_edgesBuilder
    implements
        Builder<GFetchSearchResultsData_search_edges,
            GFetchSearchResultsData_search_edgesBuilder> {
  _$GFetchSearchResultsData_search_edges _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  String _cursor;
  String get cursor => _$this._cursor;
  set cursor(String cursor) => _$this._cursor = cursor;

  GFetchSearchResultsData_search_edges_node _node;
  GFetchSearchResultsData_search_edges_node get node => _$this._node;
  set node(GFetchSearchResultsData_search_edges_node node) =>
      _$this._node = node;

  GFetchSearchResultsData_search_edgesBuilder() {
    GFetchSearchResultsData_search_edges._initializeBuilder(this);
  }

  GFetchSearchResultsData_search_edgesBuilder get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _cursor = _$v.cursor;
      _node = _$v.node;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchSearchResultsData_search_edges other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GFetchSearchResultsData_search_edges;
  }

  @override
  void update(
      void Function(GFetchSearchResultsData_search_edgesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFetchSearchResultsData_search_edges build() {
    final _$result = _$v ??
        new _$GFetchSearchResultsData_search_edges._(
            G__typename: G__typename, cursor: cursor, node: node);
    replace(_$result);
    return _$result;
  }
}

class _$GFetchSearchResultsData_search_edges_node__base
    extends GFetchSearchResultsData_search_edges_node__base {
  @override
  final String G__typename;

  factory _$GFetchSearchResultsData_search_edges_node__base(
          [void Function(GFetchSearchResultsData_search_edges_node__baseBuilder)
              updates]) =>
      (new GFetchSearchResultsData_search_edges_node__baseBuilder()
            ..update(updates))
          .build();

  _$GFetchSearchResultsData_search_edges_node__base._({this.G__typename})
      : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_edges_node__base', 'G__typename');
    }
  }

  @override
  GFetchSearchResultsData_search_edges_node__base rebuild(
          void Function(GFetchSearchResultsData_search_edges_node__baseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchSearchResultsData_search_edges_node__baseBuilder toBuilder() =>
      new GFetchSearchResultsData_search_edges_node__baseBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchSearchResultsData_search_edges_node__base &&
        G__typename == other.G__typename;
  }

  @override
  int get hashCode {
    return $jf($jc(0, G__typename.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GFetchSearchResultsData_search_edges_node__base')
          ..add('G__typename', G__typename))
        .toString();
  }
}

class GFetchSearchResultsData_search_edges_node__baseBuilder
    implements
        Builder<GFetchSearchResultsData_search_edges_node__base,
            GFetchSearchResultsData_search_edges_node__baseBuilder> {
  _$GFetchSearchResultsData_search_edges_node__base _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  GFetchSearchResultsData_search_edges_node__baseBuilder() {
    GFetchSearchResultsData_search_edges_node__base._initializeBuilder(this);
  }

  GFetchSearchResultsData_search_edges_node__baseBuilder get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchSearchResultsData_search_edges_node__base other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GFetchSearchResultsData_search_edges_node__base;
  }

  @override
  void update(
      void Function(GFetchSearchResultsData_search_edges_node__baseBuilder)
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFetchSearchResultsData_search_edges_node__base build() {
    final _$result = _$v ??
        new _$GFetchSearchResultsData_search_edges_node__base._(
            G__typename: G__typename);
    replace(_$result);
    return _$result;
  }
}

class _$GFetchSearchResultsData_search_edges_node__asIssue
    extends GFetchSearchResultsData_search_edges_node__asIssue {
  @override
  final String G__typename;
  @override
  final _i3.GIssueState state;
  @override
  final String body;
  @override
  final GFetchSearchResultsData_search_edges_node__asIssue_labels labels;
  @override
  final _i3.GDateTime createdAt;
  @override
  final _i3.GDateTime updatedAt;
  @override
  final String title;
  @override
  final int number;
  @override
  final GFetchSearchResultsData_search_edges_node__asIssue_author author;
  @override
  final GFetchSearchResultsData_search_edges_node__asIssue_comments comments;

  factory _$GFetchSearchResultsData_search_edges_node__asIssue(
          [void Function(
                  GFetchSearchResultsData_search_edges_node__asIssueBuilder)
              updates]) =>
      (new GFetchSearchResultsData_search_edges_node__asIssueBuilder()
            ..update(updates))
          .build();

  _$GFetchSearchResultsData_search_edges_node__asIssue._(
      {this.G__typename,
      this.state,
      this.body,
      this.labels,
      this.createdAt,
      this.updatedAt,
      this.title,
      this.number,
      this.author,
      this.comments})
      : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_edges_node__asIssue', 'G__typename');
    }
    if (state == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_edges_node__asIssue', 'state');
    }
    if (body == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_edges_node__asIssue', 'body');
    }
    if (createdAt == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_edges_node__asIssue', 'createdAt');
    }
    if (updatedAt == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_edges_node__asIssue', 'updatedAt');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_edges_node__asIssue', 'title');
    }
    if (number == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_edges_node__asIssue', 'number');
    }
    if (comments == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_edges_node__asIssue', 'comments');
    }
  }

  @override
  GFetchSearchResultsData_search_edges_node__asIssue rebuild(
          void Function(
                  GFetchSearchResultsData_search_edges_node__asIssueBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchSearchResultsData_search_edges_node__asIssueBuilder toBuilder() =>
      new GFetchSearchResultsData_search_edges_node__asIssueBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchSearchResultsData_search_edges_node__asIssue &&
        G__typename == other.G__typename &&
        state == other.state &&
        body == other.body &&
        labels == other.labels &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        title == other.title &&
        number == other.number &&
        author == other.author &&
        comments == other.comments;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, G__typename.hashCode),
                                        state.hashCode),
                                    body.hashCode),
                                labels.hashCode),
                            createdAt.hashCode),
                        updatedAt.hashCode),
                    title.hashCode),
                number.hashCode),
            author.hashCode),
        comments.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GFetchSearchResultsData_search_edges_node__asIssue')
          ..add('G__typename', G__typename)
          ..add('state', state)
          ..add('body', body)
          ..add('labels', labels)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('title', title)
          ..add('number', number)
          ..add('author', author)
          ..add('comments', comments))
        .toString();
  }
}

class GFetchSearchResultsData_search_edges_node__asIssueBuilder
    implements
        Builder<GFetchSearchResultsData_search_edges_node__asIssue,
            GFetchSearchResultsData_search_edges_node__asIssueBuilder> {
  _$GFetchSearchResultsData_search_edges_node__asIssue _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  _i3.GIssueState _state;
  _i3.GIssueState get state => _$this._state;
  set state(_i3.GIssueState state) => _$this._state = state;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  GFetchSearchResultsData_search_edges_node__asIssue_labelsBuilder _labels;
  GFetchSearchResultsData_search_edges_node__asIssue_labelsBuilder get labels =>
      _$this._labels ??=
          new GFetchSearchResultsData_search_edges_node__asIssue_labelsBuilder();
  set labels(
          GFetchSearchResultsData_search_edges_node__asIssue_labelsBuilder
              labels) =>
      _$this._labels = labels;

  _i3.GDateTimeBuilder _createdAt;
  _i3.GDateTimeBuilder get createdAt =>
      _$this._createdAt ??= new _i3.GDateTimeBuilder();
  set createdAt(_i3.GDateTimeBuilder createdAt) =>
      _$this._createdAt = createdAt;

  _i3.GDateTimeBuilder _updatedAt;
  _i3.GDateTimeBuilder get updatedAt =>
      _$this._updatedAt ??= new _i3.GDateTimeBuilder();
  set updatedAt(_i3.GDateTimeBuilder updatedAt) =>
      _$this._updatedAt = updatedAt;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  int _number;
  int get number => _$this._number;
  set number(int number) => _$this._number = number;

  GFetchSearchResultsData_search_edges_node__asIssue_authorBuilder _author;
  GFetchSearchResultsData_search_edges_node__asIssue_authorBuilder get author =>
      _$this._author ??=
          new GFetchSearchResultsData_search_edges_node__asIssue_authorBuilder();
  set author(
          GFetchSearchResultsData_search_edges_node__asIssue_authorBuilder
              author) =>
      _$this._author = author;

  GFetchSearchResultsData_search_edges_node__asIssue_commentsBuilder _comments;
  GFetchSearchResultsData_search_edges_node__asIssue_commentsBuilder
      get comments => _$this._comments ??=
          new GFetchSearchResultsData_search_edges_node__asIssue_commentsBuilder();
  set comments(
          GFetchSearchResultsData_search_edges_node__asIssue_commentsBuilder
              comments) =>
      _$this._comments = comments;

  GFetchSearchResultsData_search_edges_node__asIssueBuilder() {
    GFetchSearchResultsData_search_edges_node__asIssue._initializeBuilder(this);
  }

  GFetchSearchResultsData_search_edges_node__asIssueBuilder get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _state = _$v.state;
      _body = _$v.body;
      _labels = _$v.labels?.toBuilder();
      _createdAt = _$v.createdAt?.toBuilder();
      _updatedAt = _$v.updatedAt?.toBuilder();
      _title = _$v.title;
      _number = _$v.number;
      _author = _$v.author?.toBuilder();
      _comments = _$v.comments?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchSearchResultsData_search_edges_node__asIssue other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GFetchSearchResultsData_search_edges_node__asIssue;
  }

  @override
  void update(
      void Function(GFetchSearchResultsData_search_edges_node__asIssueBuilder)
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFetchSearchResultsData_search_edges_node__asIssue build() {
    _$GFetchSearchResultsData_search_edges_node__asIssue _$result;
    try {
      _$result = _$v ??
          new _$GFetchSearchResultsData_search_edges_node__asIssue._(
              G__typename: G__typename,
              state: state,
              body: body,
              labels: _labels?.build(),
              createdAt: createdAt.build(),
              updatedAt: updatedAt.build(),
              title: title,
              number: number,
              author: _author?.build(),
              comments: comments.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'labels';
        _labels?.build();
        _$failedField = 'createdAt';
        createdAt.build();
        _$failedField = 'updatedAt';
        updatedAt.build();

        _$failedField = 'author';
        _author?.build();
        _$failedField = 'comments';
        comments.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GFetchSearchResultsData_search_edges_node__asIssue',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFetchSearchResultsData_search_edges_node__asIssue_labels
    extends GFetchSearchResultsData_search_edges_node__asIssue_labels {
  @override
  final String G__typename;
  @override
  final int totalCount;
  @override
  final GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfo
      pageInfo;
  @override
  final BuiltList<
      GFetchSearchResultsData_search_edges_node__asIssue_labels_edges> edges;

  factory _$GFetchSearchResultsData_search_edges_node__asIssue_labels(
          [void Function(
                  GFetchSearchResultsData_search_edges_node__asIssue_labelsBuilder)
              updates]) =>
      (new GFetchSearchResultsData_search_edges_node__asIssue_labelsBuilder()
            ..update(updates))
          .build();

  _$GFetchSearchResultsData_search_edges_node__asIssue_labels._(
      {this.G__typename, this.totalCount, this.pageInfo, this.edges})
      : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_edges_node__asIssue_labels',
          'G__typename');
    }
    if (totalCount == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_edges_node__asIssue_labels',
          'totalCount');
    }
    if (pageInfo == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_edges_node__asIssue_labels',
          'pageInfo');
    }
  }

  @override
  GFetchSearchResultsData_search_edges_node__asIssue_labels rebuild(
          void Function(
                  GFetchSearchResultsData_search_edges_node__asIssue_labelsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchSearchResultsData_search_edges_node__asIssue_labelsBuilder
      toBuilder() =>
          new GFetchSearchResultsData_search_edges_node__asIssue_labelsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchSearchResultsData_search_edges_node__asIssue_labels &&
        G__typename == other.G__typename &&
        totalCount == other.totalCount &&
        pageInfo == other.pageInfo &&
        edges == other.edges;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), totalCount.hashCode),
            pageInfo.hashCode),
        edges.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GFetchSearchResultsData_search_edges_node__asIssue_labels')
          ..add('G__typename', G__typename)
          ..add('totalCount', totalCount)
          ..add('pageInfo', pageInfo)
          ..add('edges', edges))
        .toString();
  }
}

class GFetchSearchResultsData_search_edges_node__asIssue_labelsBuilder
    implements
        Builder<GFetchSearchResultsData_search_edges_node__asIssue_labels,
            GFetchSearchResultsData_search_edges_node__asIssue_labelsBuilder> {
  _$GFetchSearchResultsData_search_edges_node__asIssue_labels _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  int _totalCount;
  int get totalCount => _$this._totalCount;
  set totalCount(int totalCount) => _$this._totalCount = totalCount;

  GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfoBuilder
      _pageInfo;
  GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfoBuilder
      get pageInfo => _$this._pageInfo ??=
          new GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfoBuilder();
  set pageInfo(
          GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfoBuilder
              pageInfo) =>
      _$this._pageInfo = pageInfo;

  ListBuilder<GFetchSearchResultsData_search_edges_node__asIssue_labels_edges>
      _edges;
  ListBuilder<GFetchSearchResultsData_search_edges_node__asIssue_labels_edges>
      get edges => _$this._edges ??= new ListBuilder<
          GFetchSearchResultsData_search_edges_node__asIssue_labels_edges>();
  set edges(
          ListBuilder<
                  GFetchSearchResultsData_search_edges_node__asIssue_labels_edges>
              edges) =>
      _$this._edges = edges;

  GFetchSearchResultsData_search_edges_node__asIssue_labelsBuilder() {
    GFetchSearchResultsData_search_edges_node__asIssue_labels
        ._initializeBuilder(this);
  }

  GFetchSearchResultsData_search_edges_node__asIssue_labelsBuilder get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _totalCount = _$v.totalCount;
      _pageInfo = _$v.pageInfo?.toBuilder();
      _edges = _$v.edges?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GFetchSearchResultsData_search_edges_node__asIssue_labels other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GFetchSearchResultsData_search_edges_node__asIssue_labels;
  }

  @override
  void update(
      void Function(
              GFetchSearchResultsData_search_edges_node__asIssue_labelsBuilder)
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFetchSearchResultsData_search_edges_node__asIssue_labels build() {
    _$GFetchSearchResultsData_search_edges_node__asIssue_labels _$result;
    try {
      _$result = _$v ??
          new _$GFetchSearchResultsData_search_edges_node__asIssue_labels._(
              G__typename: G__typename,
              totalCount: totalCount,
              pageInfo: pageInfo.build(),
              edges: _edges?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'pageInfo';
        pageInfo.build();
        _$failedField = 'edges';
        _edges?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GFetchSearchResultsData_search_edges_node__asIssue_labels',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfo
    extends GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfo {
  @override
  final String G__typename;
  @override
  final String startCursor;
  @override
  final String endCursor;
  @override
  final bool hasNextPage;
  @override
  final bool hasPreviousPage;

  factory _$GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfo(
          [void Function(
                  GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfoBuilder)
              updates]) =>
      (new GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfoBuilder()
            ..update(updates))
          .build();

  _$GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfo._(
      {this.G__typename,
      this.startCursor,
      this.endCursor,
      this.hasNextPage,
      this.hasPreviousPage})
      : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfo',
          'G__typename');
    }
    if (hasNextPage == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfo',
          'hasNextPage');
    }
    if (hasPreviousPage == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfo',
          'hasPreviousPage');
    }
  }

  @override
  GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfo rebuild(
          void Function(
                  GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfoBuilder
      toBuilder() =>
          new GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfoBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfo &&
        G__typename == other.G__typename &&
        startCursor == other.startCursor &&
        endCursor == other.endCursor &&
        hasNextPage == other.hasNextPage &&
        hasPreviousPage == other.hasPreviousPage;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, G__typename.hashCode), startCursor.hashCode),
                endCursor.hashCode),
            hasNextPage.hashCode),
        hasPreviousPage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfo')
          ..add('G__typename', G__typename)
          ..add('startCursor', startCursor)
          ..add('endCursor', endCursor)
          ..add('hasNextPage', hasNextPage)
          ..add('hasPreviousPage', hasPreviousPage))
        .toString();
  }
}

class GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfoBuilder
    implements
        Builder<
            GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfo,
            GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfoBuilder> {
  _$GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfo _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  String _startCursor;
  String get startCursor => _$this._startCursor;
  set startCursor(String startCursor) => _$this._startCursor = startCursor;

  String _endCursor;
  String get endCursor => _$this._endCursor;
  set endCursor(String endCursor) => _$this._endCursor = endCursor;

  bool _hasNextPage;
  bool get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool hasNextPage) => _$this._hasNextPage = hasNextPage;

  bool _hasPreviousPage;
  bool get hasPreviousPage => _$this._hasPreviousPage;
  set hasPreviousPage(bool hasPreviousPage) =>
      _$this._hasPreviousPage = hasPreviousPage;

  GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfoBuilder() {
    GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfo
        ._initializeBuilder(this);
  }

  GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfoBuilder
      get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _startCursor = _$v.startCursor;
      _endCursor = _$v.endCursor;
      _hasNextPage = _$v.hasNextPage;
      _hasPreviousPage = _$v.hasPreviousPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfo
          other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other
        as _$GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfo;
  }

  @override
  void update(
      void Function(
              GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfoBuilder)
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfo build() {
    final _$result = _$v ??
        new _$GFetchSearchResultsData_search_edges_node__asIssue_labels_pageInfo
                ._(
            G__typename: G__typename,
            startCursor: startCursor,
            endCursor: endCursor,
            hasNextPage: hasNextPage,
            hasPreviousPage: hasPreviousPage);
    replace(_$result);
    return _$result;
  }
}

class _$GFetchSearchResultsData_search_edges_node__asIssue_labels_edges
    extends GFetchSearchResultsData_search_edges_node__asIssue_labels_edges {
  @override
  final String G__typename;
  @override
  final GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_node
      node;

  factory _$GFetchSearchResultsData_search_edges_node__asIssue_labels_edges(
          [void Function(
                  GFetchSearchResultsData_search_edges_node__asIssue_labels_edgesBuilder)
              updates]) =>
      (new GFetchSearchResultsData_search_edges_node__asIssue_labels_edgesBuilder()
            ..update(updates))
          .build();

  _$GFetchSearchResultsData_search_edges_node__asIssue_labels_edges._(
      {this.G__typename, this.node})
      : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_edges_node__asIssue_labels_edges',
          'G__typename');
    }
  }

  @override
  GFetchSearchResultsData_search_edges_node__asIssue_labels_edges rebuild(
          void Function(
                  GFetchSearchResultsData_search_edges_node__asIssue_labels_edgesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchSearchResultsData_search_edges_node__asIssue_labels_edgesBuilder
      toBuilder() =>
          new GFetchSearchResultsData_search_edges_node__asIssue_labels_edgesBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GFetchSearchResultsData_search_edges_node__asIssue_labels_edges &&
        G__typename == other.G__typename &&
        node == other.node;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), node.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GFetchSearchResultsData_search_edges_node__asIssue_labels_edges')
          ..add('G__typename', G__typename)
          ..add('node', node))
        .toString();
  }
}

class GFetchSearchResultsData_search_edges_node__asIssue_labels_edgesBuilder
    implements
        Builder<GFetchSearchResultsData_search_edges_node__asIssue_labels_edges,
            GFetchSearchResultsData_search_edges_node__asIssue_labels_edgesBuilder> {
  _$GFetchSearchResultsData_search_edges_node__asIssue_labels_edges _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_nodeBuilder
      _node;
  GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_nodeBuilder
      get node => _$this._node ??=
          new GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_nodeBuilder();
  set node(
          GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_nodeBuilder
              node) =>
      _$this._node = node;

  GFetchSearchResultsData_search_edges_node__asIssue_labels_edgesBuilder() {
    GFetchSearchResultsData_search_edges_node__asIssue_labels_edges
        ._initializeBuilder(this);
  }

  GFetchSearchResultsData_search_edges_node__asIssue_labels_edgesBuilder
      get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _node = _$v.node?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GFetchSearchResultsData_search_edges_node__asIssue_labels_edges other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other
        as _$GFetchSearchResultsData_search_edges_node__asIssue_labels_edges;
  }

  @override
  void update(
      void Function(
              GFetchSearchResultsData_search_edges_node__asIssue_labels_edgesBuilder)
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFetchSearchResultsData_search_edges_node__asIssue_labels_edges build() {
    _$GFetchSearchResultsData_search_edges_node__asIssue_labels_edges _$result;
    try {
      _$result = _$v ??
          new _$GFetchSearchResultsData_search_edges_node__asIssue_labels_edges
              ._(G__typename: G__typename, node: _node?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'node';
        _node?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GFetchSearchResultsData_search_edges_node__asIssue_labels_edges',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_node
    extends GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_node {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String color;

  factory _$GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_node(
          [void Function(
                  GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_nodeBuilder)
              updates]) =>
      (new GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_nodeBuilder()
            ..update(updates))
          .build();

  _$GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_node._(
      {this.G__typename, this.id, this.name, this.color})
      : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_node',
          'G__typename');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_node',
          'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_node',
          'name');
    }
    if (color == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_node',
          'color');
    }
  }

  @override
  GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_node rebuild(
          void Function(
                  GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_nodeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_nodeBuilder
      toBuilder() =>
          new GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_nodeBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_node &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        color == other.color;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), id.hashCode), name.hashCode),
        color.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_node')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('color', color))
        .toString();
  }
}

class GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_nodeBuilder
    implements
        Builder<
            GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_node,
            GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_nodeBuilder> {
  _$GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_node _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _color;
  String get color => _$this._color;
  set color(String color) => _$this._color = color;

  GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_nodeBuilder() {
    GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_node
        ._initializeBuilder(this);
  }

  GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_nodeBuilder
      get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _id = _$v.id;
      _name = _$v.name;
      _color = _$v.color;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_node
          other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other
        as _$GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_node;
  }

  @override
  void update(
      void Function(
              GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_nodeBuilder)
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_node
      build() {
    final _$result = _$v ??
        new _$GFetchSearchResultsData_search_edges_node__asIssue_labels_edges_node
            ._(G__typename: G__typename, id: id, name: name, color: color);
    replace(_$result);
    return _$result;
  }
}

class _$GFetchSearchResultsData_search_edges_node__asIssue_author
    extends GFetchSearchResultsData_search_edges_node__asIssue_author {
  @override
  final String G__typename;
  @override
  final String login;
  @override
  final _i3.GURI avatarUrl;

  factory _$GFetchSearchResultsData_search_edges_node__asIssue_author(
          [void Function(
                  GFetchSearchResultsData_search_edges_node__asIssue_authorBuilder)
              updates]) =>
      (new GFetchSearchResultsData_search_edges_node__asIssue_authorBuilder()
            ..update(updates))
          .build();

  _$GFetchSearchResultsData_search_edges_node__asIssue_author._(
      {this.G__typename, this.login, this.avatarUrl})
      : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_edges_node__asIssue_author',
          'G__typename');
    }
    if (login == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_edges_node__asIssue_author', 'login');
    }
    if (avatarUrl == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_edges_node__asIssue_author',
          'avatarUrl');
    }
  }

  @override
  GFetchSearchResultsData_search_edges_node__asIssue_author rebuild(
          void Function(
                  GFetchSearchResultsData_search_edges_node__asIssue_authorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchSearchResultsData_search_edges_node__asIssue_authorBuilder
      toBuilder() =>
          new GFetchSearchResultsData_search_edges_node__asIssue_authorBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchSearchResultsData_search_edges_node__asIssue_author &&
        G__typename == other.G__typename &&
        login == other.login &&
        avatarUrl == other.avatarUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, G__typename.hashCode), login.hashCode), avatarUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GFetchSearchResultsData_search_edges_node__asIssue_author')
          ..add('G__typename', G__typename)
          ..add('login', login)
          ..add('avatarUrl', avatarUrl))
        .toString();
  }
}

class GFetchSearchResultsData_search_edges_node__asIssue_authorBuilder
    implements
        Builder<GFetchSearchResultsData_search_edges_node__asIssue_author,
            GFetchSearchResultsData_search_edges_node__asIssue_authorBuilder> {
  _$GFetchSearchResultsData_search_edges_node__asIssue_author _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  String _login;
  String get login => _$this._login;
  set login(String login) => _$this._login = login;

  _i3.GURIBuilder _avatarUrl;
  _i3.GURIBuilder get avatarUrl => _$this._avatarUrl ??= new _i3.GURIBuilder();
  set avatarUrl(_i3.GURIBuilder avatarUrl) => _$this._avatarUrl = avatarUrl;

  GFetchSearchResultsData_search_edges_node__asIssue_authorBuilder() {
    GFetchSearchResultsData_search_edges_node__asIssue_author
        ._initializeBuilder(this);
  }

  GFetchSearchResultsData_search_edges_node__asIssue_authorBuilder get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _login = _$v.login;
      _avatarUrl = _$v.avatarUrl?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GFetchSearchResultsData_search_edges_node__asIssue_author other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GFetchSearchResultsData_search_edges_node__asIssue_author;
  }

  @override
  void update(
      void Function(
              GFetchSearchResultsData_search_edges_node__asIssue_authorBuilder)
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFetchSearchResultsData_search_edges_node__asIssue_author build() {
    _$GFetchSearchResultsData_search_edges_node__asIssue_author _$result;
    try {
      _$result = _$v ??
          new _$GFetchSearchResultsData_search_edges_node__asIssue_author._(
              G__typename: G__typename,
              login: login,
              avatarUrl: avatarUrl.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'avatarUrl';
        avatarUrl.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GFetchSearchResultsData_search_edges_node__asIssue_author',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFetchSearchResultsData_search_edges_node__asIssue_comments
    extends GFetchSearchResultsData_search_edges_node__asIssue_comments {
  @override
  final String G__typename;
  @override
  final int totalCount;
  @override
  final GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfo
      pageInfo;
  @override
  final BuiltList<
      GFetchSearchResultsData_search_edges_node__asIssue_comments_edges> edges;

  factory _$GFetchSearchResultsData_search_edges_node__asIssue_comments(
          [void Function(
                  GFetchSearchResultsData_search_edges_node__asIssue_commentsBuilder)
              updates]) =>
      (new GFetchSearchResultsData_search_edges_node__asIssue_commentsBuilder()
            ..update(updates))
          .build();

  _$GFetchSearchResultsData_search_edges_node__asIssue_comments._(
      {this.G__typename, this.totalCount, this.pageInfo, this.edges})
      : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_edges_node__asIssue_comments',
          'G__typename');
    }
    if (totalCount == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_edges_node__asIssue_comments',
          'totalCount');
    }
    if (pageInfo == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_edges_node__asIssue_comments',
          'pageInfo');
    }
  }

  @override
  GFetchSearchResultsData_search_edges_node__asIssue_comments rebuild(
          void Function(
                  GFetchSearchResultsData_search_edges_node__asIssue_commentsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchSearchResultsData_search_edges_node__asIssue_commentsBuilder
      toBuilder() =>
          new GFetchSearchResultsData_search_edges_node__asIssue_commentsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GFetchSearchResultsData_search_edges_node__asIssue_comments &&
        G__typename == other.G__typename &&
        totalCount == other.totalCount &&
        pageInfo == other.pageInfo &&
        edges == other.edges;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), totalCount.hashCode),
            pageInfo.hashCode),
        edges.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GFetchSearchResultsData_search_edges_node__asIssue_comments')
          ..add('G__typename', G__typename)
          ..add('totalCount', totalCount)
          ..add('pageInfo', pageInfo)
          ..add('edges', edges))
        .toString();
  }
}

class GFetchSearchResultsData_search_edges_node__asIssue_commentsBuilder
    implements
        Builder<GFetchSearchResultsData_search_edges_node__asIssue_comments,
            GFetchSearchResultsData_search_edges_node__asIssue_commentsBuilder> {
  _$GFetchSearchResultsData_search_edges_node__asIssue_comments _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  int _totalCount;
  int get totalCount => _$this._totalCount;
  set totalCount(int totalCount) => _$this._totalCount = totalCount;

  GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfoBuilder
      _pageInfo;
  GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfoBuilder
      get pageInfo => _$this._pageInfo ??=
          new GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfoBuilder();
  set pageInfo(
          GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfoBuilder
              pageInfo) =>
      _$this._pageInfo = pageInfo;

  ListBuilder<GFetchSearchResultsData_search_edges_node__asIssue_comments_edges>
      _edges;
  ListBuilder<GFetchSearchResultsData_search_edges_node__asIssue_comments_edges>
      get edges => _$this._edges ??= new ListBuilder<
          GFetchSearchResultsData_search_edges_node__asIssue_comments_edges>();
  set edges(
          ListBuilder<
                  GFetchSearchResultsData_search_edges_node__asIssue_comments_edges>
              edges) =>
      _$this._edges = edges;

  GFetchSearchResultsData_search_edges_node__asIssue_commentsBuilder() {
    GFetchSearchResultsData_search_edges_node__asIssue_comments
        ._initializeBuilder(this);
  }

  GFetchSearchResultsData_search_edges_node__asIssue_commentsBuilder
      get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _totalCount = _$v.totalCount;
      _pageInfo = _$v.pageInfo?.toBuilder();
      _edges = _$v.edges?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GFetchSearchResultsData_search_edges_node__asIssue_comments other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v =
        other as _$GFetchSearchResultsData_search_edges_node__asIssue_comments;
  }

  @override
  void update(
      void Function(
              GFetchSearchResultsData_search_edges_node__asIssue_commentsBuilder)
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFetchSearchResultsData_search_edges_node__asIssue_comments build() {
    _$GFetchSearchResultsData_search_edges_node__asIssue_comments _$result;
    try {
      _$result = _$v ??
          new _$GFetchSearchResultsData_search_edges_node__asIssue_comments._(
              G__typename: G__typename,
              totalCount: totalCount,
              pageInfo: pageInfo.build(),
              edges: _edges?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'pageInfo';
        pageInfo.build();
        _$failedField = 'edges';
        _edges?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GFetchSearchResultsData_search_edges_node__asIssue_comments',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfo
    extends GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfo {
  @override
  final String G__typename;
  @override
  final String startCursor;
  @override
  final String endCursor;
  @override
  final bool hasNextPage;
  @override
  final bool hasPreviousPage;

  factory _$GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfo(
          [void Function(
                  GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfoBuilder)
              updates]) =>
      (new GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfoBuilder()
            ..update(updates))
          .build();

  _$GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfo._(
      {this.G__typename,
      this.startCursor,
      this.endCursor,
      this.hasNextPage,
      this.hasPreviousPage})
      : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfo',
          'G__typename');
    }
    if (hasNextPage == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfo',
          'hasNextPage');
    }
    if (hasPreviousPage == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfo',
          'hasPreviousPage');
    }
  }

  @override
  GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfo rebuild(
          void Function(
                  GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfoBuilder
      toBuilder() =>
          new GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfoBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfo &&
        G__typename == other.G__typename &&
        startCursor == other.startCursor &&
        endCursor == other.endCursor &&
        hasNextPage == other.hasNextPage &&
        hasPreviousPage == other.hasPreviousPage;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, G__typename.hashCode), startCursor.hashCode),
                endCursor.hashCode),
            hasNextPage.hashCode),
        hasPreviousPage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfo')
          ..add('G__typename', G__typename)
          ..add('startCursor', startCursor)
          ..add('endCursor', endCursor)
          ..add('hasNextPage', hasNextPage)
          ..add('hasPreviousPage', hasPreviousPage))
        .toString();
  }
}

class GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfoBuilder
    implements
        Builder<
            GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfo,
            GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfoBuilder> {
  _$GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfo _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  String _startCursor;
  String get startCursor => _$this._startCursor;
  set startCursor(String startCursor) => _$this._startCursor = startCursor;

  String _endCursor;
  String get endCursor => _$this._endCursor;
  set endCursor(String endCursor) => _$this._endCursor = endCursor;

  bool _hasNextPage;
  bool get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool hasNextPage) => _$this._hasNextPage = hasNextPage;

  bool _hasPreviousPage;
  bool get hasPreviousPage => _$this._hasPreviousPage;
  set hasPreviousPage(bool hasPreviousPage) =>
      _$this._hasPreviousPage = hasPreviousPage;

  GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfoBuilder() {
    GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfo
        ._initializeBuilder(this);
  }

  GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfoBuilder
      get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _startCursor = _$v.startCursor;
      _endCursor = _$v.endCursor;
      _hasNextPage = _$v.hasNextPage;
      _hasPreviousPage = _$v.hasPreviousPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfo
          other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other
        as _$GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfo;
  }

  @override
  void update(
      void Function(
              GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfoBuilder)
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfo
      build() {
    final _$result = _$v ??
        new _$GFetchSearchResultsData_search_edges_node__asIssue_comments_pageInfo
                ._(
            G__typename: G__typename,
            startCursor: startCursor,
            endCursor: endCursor,
            hasNextPage: hasNextPage,
            hasPreviousPage: hasPreviousPage);
    replace(_$result);
    return _$result;
  }
}

class _$GFetchSearchResultsData_search_edges_node__asIssue_comments_edges
    extends GFetchSearchResultsData_search_edges_node__asIssue_comments_edges {
  @override
  final String G__typename;
  @override
  final String cursor;
  @override
  final GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node
      node;

  factory _$GFetchSearchResultsData_search_edges_node__asIssue_comments_edges(
          [void Function(
                  GFetchSearchResultsData_search_edges_node__asIssue_comments_edgesBuilder)
              updates]) =>
      (new GFetchSearchResultsData_search_edges_node__asIssue_comments_edgesBuilder()
            ..update(updates))
          .build();

  _$GFetchSearchResultsData_search_edges_node__asIssue_comments_edges._(
      {this.G__typename, this.cursor, this.node})
      : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_edges_node__asIssue_comments_edges',
          'G__typename');
    }
    if (cursor == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_edges_node__asIssue_comments_edges',
          'cursor');
    }
  }

  @override
  GFetchSearchResultsData_search_edges_node__asIssue_comments_edges rebuild(
          void Function(
                  GFetchSearchResultsData_search_edges_node__asIssue_comments_edgesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchSearchResultsData_search_edges_node__asIssue_comments_edgesBuilder
      toBuilder() =>
          new GFetchSearchResultsData_search_edges_node__asIssue_comments_edgesBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GFetchSearchResultsData_search_edges_node__asIssue_comments_edges &&
        G__typename == other.G__typename &&
        cursor == other.cursor &&
        node == other.node;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, G__typename.hashCode), cursor.hashCode), node.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GFetchSearchResultsData_search_edges_node__asIssue_comments_edges')
          ..add('G__typename', G__typename)
          ..add('cursor', cursor)
          ..add('node', node))
        .toString();
  }
}

class GFetchSearchResultsData_search_edges_node__asIssue_comments_edgesBuilder
    implements
        Builder<
            GFetchSearchResultsData_search_edges_node__asIssue_comments_edges,
            GFetchSearchResultsData_search_edges_node__asIssue_comments_edgesBuilder> {
  _$GFetchSearchResultsData_search_edges_node__asIssue_comments_edges _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  String _cursor;
  String get cursor => _$this._cursor;
  set cursor(String cursor) => _$this._cursor = cursor;

  GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_nodeBuilder
      _node;
  GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_nodeBuilder
      get node => _$this._node ??=
          new GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_nodeBuilder();
  set node(
          GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_nodeBuilder
              node) =>
      _$this._node = node;

  GFetchSearchResultsData_search_edges_node__asIssue_comments_edgesBuilder() {
    GFetchSearchResultsData_search_edges_node__asIssue_comments_edges
        ._initializeBuilder(this);
  }

  GFetchSearchResultsData_search_edges_node__asIssue_comments_edgesBuilder
      get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _cursor = _$v.cursor;
      _node = _$v.node?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GFetchSearchResultsData_search_edges_node__asIssue_comments_edges other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other
        as _$GFetchSearchResultsData_search_edges_node__asIssue_comments_edges;
  }

  @override
  void update(
      void Function(
              GFetchSearchResultsData_search_edges_node__asIssue_comments_edgesBuilder)
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFetchSearchResultsData_search_edges_node__asIssue_comments_edges build() {
    _$GFetchSearchResultsData_search_edges_node__asIssue_comments_edges
        _$result;
    try {
      _$result = _$v ??
          new _$GFetchSearchResultsData_search_edges_node__asIssue_comments_edges
                  ._(
              G__typename: G__typename, cursor: cursor, node: _node?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'node';
        _node?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GFetchSearchResultsData_search_edges_node__asIssue_comments_edges',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node
    extends GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node {
  @override
  final String G__typename;
  @override
  final _i3.GDateTime createdAt;
  @override
  final String body;
  @override
  final GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_author
      author;

  factory _$GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node(
          [void Function(
                  GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_nodeBuilder)
              updates]) =>
      (new GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_nodeBuilder()
            ..update(updates))
          .build();

  _$GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node._(
      {this.G__typename, this.createdAt, this.body, this.author})
      : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node',
          'G__typename');
    }
    if (createdAt == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node',
          'createdAt');
    }
    if (body == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node',
          'body');
    }
  }

  @override
  GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node rebuild(
          void Function(
                  GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_nodeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_nodeBuilder
      toBuilder() =>
          new GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_nodeBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node &&
        G__typename == other.G__typename &&
        createdAt == other.createdAt &&
        body == other.body &&
        author == other.author;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), createdAt.hashCode),
            body.hashCode),
        author.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node')
          ..add('G__typename', G__typename)
          ..add('createdAt', createdAt)
          ..add('body', body)
          ..add('author', author))
        .toString();
  }
}

class GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_nodeBuilder
    implements
        Builder<
            GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node,
            GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_nodeBuilder> {
  _$GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  _i3.GDateTimeBuilder _createdAt;
  _i3.GDateTimeBuilder get createdAt =>
      _$this._createdAt ??= new _i3.GDateTimeBuilder();
  set createdAt(_i3.GDateTimeBuilder createdAt) =>
      _$this._createdAt = createdAt;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_authorBuilder
      _author;
  GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_authorBuilder
      get author => _$this._author ??=
          new GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_authorBuilder();
  set author(
          GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_authorBuilder
              author) =>
      _$this._author = author;

  GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_nodeBuilder() {
    GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node
        ._initializeBuilder(this);
  }

  GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_nodeBuilder
      get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _createdAt = _$v.createdAt?.toBuilder();
      _body = _$v.body;
      _author = _$v.author?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node
          other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other
        as _$GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node;
  }

  @override
  void update(
      void Function(
              GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_nodeBuilder)
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node
      build() {
    _$GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node
        _$result;
    try {
      _$result = _$v ??
          new _$GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node
                  ._(
              G__typename: G__typename,
              createdAt: createdAt.build(),
              body: body,
              author: _author?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'createdAt';
        createdAt.build();

        _$failedField = 'author';
        _author?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_author
    extends GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_author {
  @override
  final String G__typename;
  @override
  final _i3.GURI avatarUrl;
  @override
  final String login;

  factory _$GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_author(
          [void Function(
                  GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_authorBuilder)
              updates]) =>
      (new GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_authorBuilder()
            ..update(updates))
          .build();

  _$GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_author._(
      {this.G__typename, this.avatarUrl, this.login})
      : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_author',
          'G__typename');
    }
    if (avatarUrl == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_author',
          'avatarUrl');
    }
    if (login == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_author',
          'login');
    }
  }

  @override
  GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_author
      rebuild(
              void Function(
                      GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_authorBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_authorBuilder
      toBuilder() =>
          new GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_authorBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_author &&
        G__typename == other.G__typename &&
        avatarUrl == other.avatarUrl &&
        login == other.login;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, G__typename.hashCode), avatarUrl.hashCode), login.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_author')
          ..add('G__typename', G__typename)
          ..add('avatarUrl', avatarUrl)
          ..add('login', login))
        .toString();
  }
}

class GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_authorBuilder
    implements
        Builder<
            GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_author,
            GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_authorBuilder> {
  _$GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_author
      _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  _i3.GURIBuilder _avatarUrl;
  _i3.GURIBuilder get avatarUrl => _$this._avatarUrl ??= new _i3.GURIBuilder();
  set avatarUrl(_i3.GURIBuilder avatarUrl) => _$this._avatarUrl = avatarUrl;

  String _login;
  String get login => _$this._login;
  set login(String login) => _$this._login = login;

  GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_authorBuilder() {
    GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_author
        ._initializeBuilder(this);
  }

  GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_authorBuilder
      get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _avatarUrl = _$v.avatarUrl?.toBuilder();
      _login = _$v.login;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_author
          other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other
        as _$GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_author;
  }

  @override
  void update(
      void Function(
              GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_authorBuilder)
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_author
      build() {
    _$GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_author
        _$result;
    try {
      _$result = _$v ??
          new _$GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_author
                  ._(
              G__typename: G__typename,
              avatarUrl: avatarUrl.build(),
              login: login);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'avatarUrl';
        avatarUrl.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GFetchSearchResultsData_search_edges_node__asIssue_comments_edges_node_author',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
