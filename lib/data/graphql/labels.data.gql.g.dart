// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'labels.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFetchAllLabelsData> _$gFetchAllLabelsDataSerializer =
    new _$GFetchAllLabelsDataSerializer();
Serializer<GFetchAllLabelsData_repository>
    _$gFetchAllLabelsDataRepositorySerializer =
    new _$GFetchAllLabelsData_repositorySerializer();
Serializer<GFetchAllLabelsData_repository_labels>
    _$gFetchAllLabelsDataRepositoryLabelsSerializer =
    new _$GFetchAllLabelsData_repository_labelsSerializer();
Serializer<GFetchAllLabelsData_repository_labels_pageInfo>
    _$gFetchAllLabelsDataRepositoryLabelsPageInfoSerializer =
    new _$GFetchAllLabelsData_repository_labels_pageInfoSerializer();
Serializer<GFetchAllLabelsData_repository_labels_edges>
    _$gFetchAllLabelsDataRepositoryLabelsEdgesSerializer =
    new _$GFetchAllLabelsData_repository_labels_edgesSerializer();
Serializer<GFetchAllLabelsData_repository_labels_edges_node>
    _$gFetchAllLabelsDataRepositoryLabelsEdgesNodeSerializer =
    new _$GFetchAllLabelsData_repository_labels_edges_nodeSerializer();

class _$GFetchAllLabelsDataSerializer
    implements StructuredSerializer<GFetchAllLabelsData> {
  @override
  final Iterable<Type> types = const [
    GFetchAllLabelsData,
    _$GFetchAllLabelsData
  ];
  @override
  final String wireName = 'GFetchAllLabelsData';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GFetchAllLabelsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    if (object.repository != null) {
      result
        ..add('repository')
        ..add(serializers.serialize(object.repository,
            specifiedType: const FullType(GFetchAllLabelsData_repository)));
    }
    return result;
  }

  @override
  GFetchAllLabelsData deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFetchAllLabelsDataBuilder();

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
        case 'repository':
          result.repository.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GFetchAllLabelsData_repository))
              as GFetchAllLabelsData_repository);
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchAllLabelsData_repositorySerializer
    implements StructuredSerializer<GFetchAllLabelsData_repository> {
  @override
  final Iterable<Type> types = const [
    GFetchAllLabelsData_repository,
    _$GFetchAllLabelsData_repository
  ];
  @override
  final String wireName = 'GFetchAllLabelsData_repository';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GFetchAllLabelsData_repository object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    if (object.labels != null) {
      result
        ..add('labels')
        ..add(serializers.serialize(object.labels,
            specifiedType:
                const FullType(GFetchAllLabelsData_repository_labels)));
    }
    return result;
  }

  @override
  GFetchAllLabelsData_repository deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFetchAllLabelsData_repositoryBuilder();

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
        case 'labels':
          result.labels.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GFetchAllLabelsData_repository_labels))
              as GFetchAllLabelsData_repository_labels);
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchAllLabelsData_repository_labelsSerializer
    implements StructuredSerializer<GFetchAllLabelsData_repository_labels> {
  @override
  final Iterable<Type> types = const [
    GFetchAllLabelsData_repository_labels,
    _$GFetchAllLabelsData_repository_labels
  ];
  @override
  final String wireName = 'GFetchAllLabelsData_repository_labels';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GFetchAllLabelsData_repository_labels object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'pageInfo',
      serializers.serialize(object.pageInfo,
          specifiedType:
              const FullType(GFetchAllLabelsData_repository_labels_pageInfo)),
    ];
    if (object.edges != null) {
      result
        ..add('edges')
        ..add(serializers.serialize(object.edges,
            specifiedType: const FullType(BuiltList, const [
              const FullType(GFetchAllLabelsData_repository_labels_edges)
            ])));
    }
    return result;
  }

  @override
  GFetchAllLabelsData_repository_labels deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFetchAllLabelsData_repository_labelsBuilder();

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
        case 'pageInfo':
          result.pageInfo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GFetchAllLabelsData_repository_labels_pageInfo))
              as GFetchAllLabelsData_repository_labels_pageInfo);
          break;
        case 'edges':
          result.edges.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GFetchAllLabelsData_repository_labels_edges)
              ])) as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchAllLabelsData_repository_labels_pageInfoSerializer
    implements
        StructuredSerializer<GFetchAllLabelsData_repository_labels_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GFetchAllLabelsData_repository_labels_pageInfo,
    _$GFetchAllLabelsData_repository_labels_pageInfo
  ];
  @override
  final String wireName = 'GFetchAllLabelsData_repository_labels_pageInfo';

  @override
  Iterable<Object> serialize(Serializers serializers,
      GFetchAllLabelsData_repository_labels_pageInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'hasPreviousPage',
      serializers.serialize(object.hasPreviousPage,
          specifiedType: const FullType(bool)),
      'hasNextPage',
      serializers.serialize(object.hasNextPage,
          specifiedType: const FullType(bool)),
    ];
    if (object.endCursor != null) {
      result
        ..add('endCursor')
        ..add(serializers.serialize(object.endCursor,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GFetchAllLabelsData_repository_labels_pageInfo deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFetchAllLabelsData_repository_labels_pageInfoBuilder();

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
        case 'hasPreviousPage':
          result.hasPreviousPage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'hasNextPage':
          result.hasNextPage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'endCursor':
          result.endCursor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchAllLabelsData_repository_labels_edgesSerializer
    implements
        StructuredSerializer<GFetchAllLabelsData_repository_labels_edges> {
  @override
  final Iterable<Type> types = const [
    GFetchAllLabelsData_repository_labels_edges,
    _$GFetchAllLabelsData_repository_labels_edges
  ];
  @override
  final String wireName = 'GFetchAllLabelsData_repository_labels_edges';

  @override
  Iterable<Object> serialize(Serializers serializers,
      GFetchAllLabelsData_repository_labels_edges object,
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
                GFetchAllLabelsData_repository_labels_edges_node)));
    }
    return result;
  }

  @override
  GFetchAllLabelsData_repository_labels_edges deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFetchAllLabelsData_repository_labels_edgesBuilder();

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
                      GFetchAllLabelsData_repository_labels_edges_node))
              as GFetchAllLabelsData_repository_labels_edges_node);
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchAllLabelsData_repository_labels_edges_nodeSerializer
    implements
        StructuredSerializer<GFetchAllLabelsData_repository_labels_edges_node> {
  @override
  final Iterable<Type> types = const [
    GFetchAllLabelsData_repository_labels_edges_node,
    _$GFetchAllLabelsData_repository_labels_edges_node
  ];
  @override
  final String wireName = 'GFetchAllLabelsData_repository_labels_edges_node';

  @override
  Iterable<Object> serialize(Serializers serializers,
      GFetchAllLabelsData_repository_labels_edges_node object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GFetchAllLabelsData_repository_labels_edges_node deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GFetchAllLabelsData_repository_labels_edges_nodeBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchAllLabelsData extends GFetchAllLabelsData {
  @override
  final String G__typename;
  @override
  final GFetchAllLabelsData_repository repository;

  factory _$GFetchAllLabelsData(
          [void Function(GFetchAllLabelsDataBuilder) updates]) =>
      (new GFetchAllLabelsDataBuilder()..update(updates)).build();

  _$GFetchAllLabelsData._({this.G__typename, this.repository}) : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError('GFetchAllLabelsData', 'G__typename');
    }
  }

  @override
  GFetchAllLabelsData rebuild(
          void Function(GFetchAllLabelsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchAllLabelsDataBuilder toBuilder() =>
      new GFetchAllLabelsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchAllLabelsData &&
        G__typename == other.G__typename &&
        repository == other.repository;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), repository.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFetchAllLabelsData')
          ..add('G__typename', G__typename)
          ..add('repository', repository))
        .toString();
  }
}

class GFetchAllLabelsDataBuilder
    implements Builder<GFetchAllLabelsData, GFetchAllLabelsDataBuilder> {
  _$GFetchAllLabelsData _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  GFetchAllLabelsData_repositoryBuilder _repository;
  GFetchAllLabelsData_repositoryBuilder get repository =>
      _$this._repository ??= new GFetchAllLabelsData_repositoryBuilder();
  set repository(GFetchAllLabelsData_repositoryBuilder repository) =>
      _$this._repository = repository;

  GFetchAllLabelsDataBuilder() {
    GFetchAllLabelsData._initializeBuilder(this);
  }

  GFetchAllLabelsDataBuilder get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _repository = _$v.repository?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchAllLabelsData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GFetchAllLabelsData;
  }

  @override
  void update(void Function(GFetchAllLabelsDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFetchAllLabelsData build() {
    _$GFetchAllLabelsData _$result;
    try {
      _$result = _$v ??
          new _$GFetchAllLabelsData._(
              G__typename: G__typename, repository: _repository?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'repository';
        _repository?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GFetchAllLabelsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFetchAllLabelsData_repository extends GFetchAllLabelsData_repository {
  @override
  final String G__typename;
  @override
  final GFetchAllLabelsData_repository_labels labels;

  factory _$GFetchAllLabelsData_repository(
          [void Function(GFetchAllLabelsData_repositoryBuilder) updates]) =>
      (new GFetchAllLabelsData_repositoryBuilder()..update(updates)).build();

  _$GFetchAllLabelsData_repository._({this.G__typename, this.labels})
      : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError(
          'GFetchAllLabelsData_repository', 'G__typename');
    }
  }

  @override
  GFetchAllLabelsData_repository rebuild(
          void Function(GFetchAllLabelsData_repositoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchAllLabelsData_repositoryBuilder toBuilder() =>
      new GFetchAllLabelsData_repositoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchAllLabelsData_repository &&
        G__typename == other.G__typename &&
        labels == other.labels;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), labels.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFetchAllLabelsData_repository')
          ..add('G__typename', G__typename)
          ..add('labels', labels))
        .toString();
  }
}

class GFetchAllLabelsData_repositoryBuilder
    implements
        Builder<GFetchAllLabelsData_repository,
            GFetchAllLabelsData_repositoryBuilder> {
  _$GFetchAllLabelsData_repository _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  GFetchAllLabelsData_repository_labelsBuilder _labels;
  GFetchAllLabelsData_repository_labelsBuilder get labels =>
      _$this._labels ??= new GFetchAllLabelsData_repository_labelsBuilder();
  set labels(GFetchAllLabelsData_repository_labelsBuilder labels) =>
      _$this._labels = labels;

  GFetchAllLabelsData_repositoryBuilder() {
    GFetchAllLabelsData_repository._initializeBuilder(this);
  }

  GFetchAllLabelsData_repositoryBuilder get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _labels = _$v.labels?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchAllLabelsData_repository other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GFetchAllLabelsData_repository;
  }

  @override
  void update(void Function(GFetchAllLabelsData_repositoryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFetchAllLabelsData_repository build() {
    _$GFetchAllLabelsData_repository _$result;
    try {
      _$result = _$v ??
          new _$GFetchAllLabelsData_repository._(
              G__typename: G__typename, labels: _labels?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'labels';
        _labels?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GFetchAllLabelsData_repository', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFetchAllLabelsData_repository_labels
    extends GFetchAllLabelsData_repository_labels {
  @override
  final String G__typename;
  @override
  final GFetchAllLabelsData_repository_labels_pageInfo pageInfo;
  @override
  final BuiltList<GFetchAllLabelsData_repository_labels_edges> edges;

  factory _$GFetchAllLabelsData_repository_labels(
          [void Function(GFetchAllLabelsData_repository_labelsBuilder)
              updates]) =>
      (new GFetchAllLabelsData_repository_labelsBuilder()..update(updates))
          .build();

  _$GFetchAllLabelsData_repository_labels._(
      {this.G__typename, this.pageInfo, this.edges})
      : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError(
          'GFetchAllLabelsData_repository_labels', 'G__typename');
    }
    if (pageInfo == null) {
      throw new BuiltValueNullFieldError(
          'GFetchAllLabelsData_repository_labels', 'pageInfo');
    }
  }

  @override
  GFetchAllLabelsData_repository_labels rebuild(
          void Function(GFetchAllLabelsData_repository_labelsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchAllLabelsData_repository_labelsBuilder toBuilder() =>
      new GFetchAllLabelsData_repository_labelsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchAllLabelsData_repository_labels &&
        G__typename == other.G__typename &&
        pageInfo == other.pageInfo &&
        edges == other.edges;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, G__typename.hashCode), pageInfo.hashCode), edges.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFetchAllLabelsData_repository_labels')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo)
          ..add('edges', edges))
        .toString();
  }
}

class GFetchAllLabelsData_repository_labelsBuilder
    implements
        Builder<GFetchAllLabelsData_repository_labels,
            GFetchAllLabelsData_repository_labelsBuilder> {
  _$GFetchAllLabelsData_repository_labels _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  GFetchAllLabelsData_repository_labels_pageInfoBuilder _pageInfo;
  GFetchAllLabelsData_repository_labels_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??=
          new GFetchAllLabelsData_repository_labels_pageInfoBuilder();
  set pageInfo(
          GFetchAllLabelsData_repository_labels_pageInfoBuilder pageInfo) =>
      _$this._pageInfo = pageInfo;

  ListBuilder<GFetchAllLabelsData_repository_labels_edges> _edges;
  ListBuilder<GFetchAllLabelsData_repository_labels_edges> get edges =>
      _$this._edges ??=
          new ListBuilder<GFetchAllLabelsData_repository_labels_edges>();
  set edges(ListBuilder<GFetchAllLabelsData_repository_labels_edges> edges) =>
      _$this._edges = edges;

  GFetchAllLabelsData_repository_labelsBuilder() {
    GFetchAllLabelsData_repository_labels._initializeBuilder(this);
  }

  GFetchAllLabelsData_repository_labelsBuilder get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _pageInfo = _$v.pageInfo?.toBuilder();
      _edges = _$v.edges?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchAllLabelsData_repository_labels other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GFetchAllLabelsData_repository_labels;
  }

  @override
  void update(
      void Function(GFetchAllLabelsData_repository_labelsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFetchAllLabelsData_repository_labels build() {
    _$GFetchAllLabelsData_repository_labels _$result;
    try {
      _$result = _$v ??
          new _$GFetchAllLabelsData_repository_labels._(
              G__typename: G__typename,
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
            'GFetchAllLabelsData_repository_labels',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFetchAllLabelsData_repository_labels_pageInfo
    extends GFetchAllLabelsData_repository_labels_pageInfo {
  @override
  final String G__typename;
  @override
  final bool hasPreviousPage;
  @override
  final bool hasNextPage;
  @override
  final String endCursor;

  factory _$GFetchAllLabelsData_repository_labels_pageInfo(
          [void Function(GFetchAllLabelsData_repository_labels_pageInfoBuilder)
              updates]) =>
      (new GFetchAllLabelsData_repository_labels_pageInfoBuilder()
            ..update(updates))
          .build();

  _$GFetchAllLabelsData_repository_labels_pageInfo._(
      {this.G__typename,
      this.hasPreviousPage,
      this.hasNextPage,
      this.endCursor})
      : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError(
          'GFetchAllLabelsData_repository_labels_pageInfo', 'G__typename');
    }
    if (hasPreviousPage == null) {
      throw new BuiltValueNullFieldError(
          'GFetchAllLabelsData_repository_labels_pageInfo', 'hasPreviousPage');
    }
    if (hasNextPage == null) {
      throw new BuiltValueNullFieldError(
          'GFetchAllLabelsData_repository_labels_pageInfo', 'hasNextPage');
    }
  }

  @override
  GFetchAllLabelsData_repository_labels_pageInfo rebuild(
          void Function(GFetchAllLabelsData_repository_labels_pageInfoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchAllLabelsData_repository_labels_pageInfoBuilder toBuilder() =>
      new GFetchAllLabelsData_repository_labels_pageInfoBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchAllLabelsData_repository_labels_pageInfo &&
        G__typename == other.G__typename &&
        hasPreviousPage == other.hasPreviousPage &&
        hasNextPage == other.hasNextPage &&
        endCursor == other.endCursor;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), hasPreviousPage.hashCode),
            hasNextPage.hashCode),
        endCursor.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GFetchAllLabelsData_repository_labels_pageInfo')
          ..add('G__typename', G__typename)
          ..add('hasPreviousPage', hasPreviousPage)
          ..add('hasNextPage', hasNextPage)
          ..add('endCursor', endCursor))
        .toString();
  }
}

class GFetchAllLabelsData_repository_labels_pageInfoBuilder
    implements
        Builder<GFetchAllLabelsData_repository_labels_pageInfo,
            GFetchAllLabelsData_repository_labels_pageInfoBuilder> {
  _$GFetchAllLabelsData_repository_labels_pageInfo _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  bool _hasPreviousPage;
  bool get hasPreviousPage => _$this._hasPreviousPage;
  set hasPreviousPage(bool hasPreviousPage) =>
      _$this._hasPreviousPage = hasPreviousPage;

  bool _hasNextPage;
  bool get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool hasNextPage) => _$this._hasNextPage = hasNextPage;

  String _endCursor;
  String get endCursor => _$this._endCursor;
  set endCursor(String endCursor) => _$this._endCursor = endCursor;

  GFetchAllLabelsData_repository_labels_pageInfoBuilder() {
    GFetchAllLabelsData_repository_labels_pageInfo._initializeBuilder(this);
  }

  GFetchAllLabelsData_repository_labels_pageInfoBuilder get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _hasPreviousPage = _$v.hasPreviousPage;
      _hasNextPage = _$v.hasNextPage;
      _endCursor = _$v.endCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchAllLabelsData_repository_labels_pageInfo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GFetchAllLabelsData_repository_labels_pageInfo;
  }

  @override
  void update(
      void Function(GFetchAllLabelsData_repository_labels_pageInfoBuilder)
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFetchAllLabelsData_repository_labels_pageInfo build() {
    final _$result = _$v ??
        new _$GFetchAllLabelsData_repository_labels_pageInfo._(
            G__typename: G__typename,
            hasPreviousPage: hasPreviousPage,
            hasNextPage: hasNextPage,
            endCursor: endCursor);
    replace(_$result);
    return _$result;
  }
}

class _$GFetchAllLabelsData_repository_labels_edges
    extends GFetchAllLabelsData_repository_labels_edges {
  @override
  final String G__typename;
  @override
  final GFetchAllLabelsData_repository_labels_edges_node node;

  factory _$GFetchAllLabelsData_repository_labels_edges(
          [void Function(GFetchAllLabelsData_repository_labels_edgesBuilder)
              updates]) =>
      (new GFetchAllLabelsData_repository_labels_edgesBuilder()
            ..update(updates))
          .build();

  _$GFetchAllLabelsData_repository_labels_edges._({this.G__typename, this.node})
      : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError(
          'GFetchAllLabelsData_repository_labels_edges', 'G__typename');
    }
  }

  @override
  GFetchAllLabelsData_repository_labels_edges rebuild(
          void Function(GFetchAllLabelsData_repository_labels_edgesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchAllLabelsData_repository_labels_edgesBuilder toBuilder() =>
      new GFetchAllLabelsData_repository_labels_edgesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchAllLabelsData_repository_labels_edges &&
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
            'GFetchAllLabelsData_repository_labels_edges')
          ..add('G__typename', G__typename)
          ..add('node', node))
        .toString();
  }
}

class GFetchAllLabelsData_repository_labels_edgesBuilder
    implements
        Builder<GFetchAllLabelsData_repository_labels_edges,
            GFetchAllLabelsData_repository_labels_edgesBuilder> {
  _$GFetchAllLabelsData_repository_labels_edges _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  GFetchAllLabelsData_repository_labels_edges_nodeBuilder _node;
  GFetchAllLabelsData_repository_labels_edges_nodeBuilder get node =>
      _$this._node ??=
          new GFetchAllLabelsData_repository_labels_edges_nodeBuilder();
  set node(GFetchAllLabelsData_repository_labels_edges_nodeBuilder node) =>
      _$this._node = node;

  GFetchAllLabelsData_repository_labels_edgesBuilder() {
    GFetchAllLabelsData_repository_labels_edges._initializeBuilder(this);
  }

  GFetchAllLabelsData_repository_labels_edgesBuilder get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _node = _$v.node?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchAllLabelsData_repository_labels_edges other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GFetchAllLabelsData_repository_labels_edges;
  }

  @override
  void update(
      void Function(GFetchAllLabelsData_repository_labels_edgesBuilder)
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFetchAllLabelsData_repository_labels_edges build() {
    _$GFetchAllLabelsData_repository_labels_edges _$result;
    try {
      _$result = _$v ??
          new _$GFetchAllLabelsData_repository_labels_edges._(
              G__typename: G__typename, node: _node?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'node';
        _node?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GFetchAllLabelsData_repository_labels_edges',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFetchAllLabelsData_repository_labels_edges_node
    extends GFetchAllLabelsData_repository_labels_edges_node {
  @override
  final String G__typename;
  @override
  final String name;

  factory _$GFetchAllLabelsData_repository_labels_edges_node(
          [void Function(
                  GFetchAllLabelsData_repository_labels_edges_nodeBuilder)
              updates]) =>
      (new GFetchAllLabelsData_repository_labels_edges_nodeBuilder()
            ..update(updates))
          .build();

  _$GFetchAllLabelsData_repository_labels_edges_node._(
      {this.G__typename, this.name})
      : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError(
          'GFetchAllLabelsData_repository_labels_edges_node', 'G__typename');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError(
          'GFetchAllLabelsData_repository_labels_edges_node', 'name');
    }
  }

  @override
  GFetchAllLabelsData_repository_labels_edges_node rebuild(
          void Function(GFetchAllLabelsData_repository_labels_edges_nodeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchAllLabelsData_repository_labels_edges_nodeBuilder toBuilder() =>
      new GFetchAllLabelsData_repository_labels_edges_nodeBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchAllLabelsData_repository_labels_edges_node &&
        G__typename == other.G__typename &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GFetchAllLabelsData_repository_labels_edges_node')
          ..add('G__typename', G__typename)
          ..add('name', name))
        .toString();
  }
}

class GFetchAllLabelsData_repository_labels_edges_nodeBuilder
    implements
        Builder<GFetchAllLabelsData_repository_labels_edges_node,
            GFetchAllLabelsData_repository_labels_edges_nodeBuilder> {
  _$GFetchAllLabelsData_repository_labels_edges_node _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  GFetchAllLabelsData_repository_labels_edges_nodeBuilder() {
    GFetchAllLabelsData_repository_labels_edges_node._initializeBuilder(this);
  }

  GFetchAllLabelsData_repository_labels_edges_nodeBuilder get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchAllLabelsData_repository_labels_edges_node other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GFetchAllLabelsData_repository_labels_edges_node;
  }

  @override
  void update(
      void Function(GFetchAllLabelsData_repository_labels_edges_nodeBuilder)
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFetchAllLabelsData_repository_labels_edges_node build() {
    final _$result = _$v ??
        new _$GFetchAllLabelsData_repository_labels_edges_node._(
            G__typename: G__typename, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
