// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFetchSearchResultsReq> _$gFetchSearchResultsReqSerializer =
    new _$GFetchSearchResultsReqSerializer();

class _$GFetchSearchResultsReqSerializer
    implements StructuredSerializer<GFetchSearchResultsReq> {
  @override
  final Iterable<Type> types = const [
    GFetchSearchResultsReq,
    _$GFetchSearchResultsReq
  ];
  @override
  final String wireName = 'GFetchSearchResultsReq';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GFetchSearchResultsReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GFetchSearchResultsVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i4.Operation)),
    ];
    if (object.requestId != null) {
      result
        ..add('requestId')
        ..add(serializers.serialize(object.requestId,
            specifiedType: const FullType(String)));
    }
    if (object.optimisticResponse != null) {
      result
        ..add('optimisticResponse')
        ..add(serializers.serialize(object.optimisticResponse,
            specifiedType: const FullType(_i2.GFetchSearchResultsData)));
    }
    if (object.updateCacheHandlerKey != null) {
      result
        ..add('updateCacheHandlerKey')
        ..add(serializers.serialize(object.updateCacheHandlerKey,
            specifiedType: const FullType(String)));
    }
    if (object.updateCacheHandlerContext != null) {
      result
        ..add('updateCacheHandlerContext')
        ..add(serializers.serialize(object.updateCacheHandlerContext,
            specifiedType: const FullType(
                Map, const [const FullType(String), const FullType(dynamic)])));
    }
    if (object.fetchPolicy != null) {
      result
        ..add('fetchPolicy')
        ..add(serializers.serialize(object.fetchPolicy,
            specifiedType: const FullType(_i1.FetchPolicy)));
    }
    if (object.executeOnListen != null) {
      result
        ..add('executeOnListen')
        ..add(serializers.serialize(object.executeOnListen,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GFetchSearchResultsReq deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFetchSearchResultsReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GFetchSearchResultsVars))
              as _i3.GFetchSearchResultsVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i4.Operation)) as _i4.Operation;
          break;
        case 'requestId':
          result.requestId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'optimisticResponse':
          result.optimisticResponse.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GFetchSearchResultsData))
              as _i2.GFetchSearchResultsData);
          break;
        case 'updateCacheHandlerKey':
          result.updateCacheHandlerKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updateCacheHandlerContext':
          result.updateCacheHandlerContext = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ])) as Map<String, dynamic>;
          break;
        case 'fetchPolicy':
          result.fetchPolicy = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.FetchPolicy))
              as _i1.FetchPolicy;
          break;
        case 'executeOnListen':
          result.executeOnListen = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchSearchResultsReq extends GFetchSearchResultsReq {
  @override
  final _i3.GFetchSearchResultsVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String requestId;
  @override
  final _i2.GFetchSearchResultsData Function(
      _i2.GFetchSearchResultsData, _i2.GFetchSearchResultsData) updateResult;
  @override
  final _i2.GFetchSearchResultsData optimisticResponse;
  @override
  final String updateCacheHandlerKey;
  @override
  final Map<String, dynamic> updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GFetchSearchResultsReq(
          [void Function(GFetchSearchResultsReqBuilder) updates]) =>
      (new GFetchSearchResultsReqBuilder()..update(updates)).build();

  _$GFetchSearchResultsReq._(
      {this.vars,
      this.operation,
      this.requestId,
      this.updateResult,
      this.optimisticResponse,
      this.updateCacheHandlerKey,
      this.updateCacheHandlerContext,
      this.fetchPolicy,
      this.executeOnListen})
      : super._() {
    if (vars == null) {
      throw new BuiltValueNullFieldError('GFetchSearchResultsReq', 'vars');
    }
    if (operation == null) {
      throw new BuiltValueNullFieldError('GFetchSearchResultsReq', 'operation');
    }
  }

  @override
  GFetchSearchResultsReq rebuild(
          void Function(GFetchSearchResultsReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchSearchResultsReqBuilder toBuilder() =>
      new GFetchSearchResultsReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GFetchSearchResultsReq &&
        vars == other.vars &&
        operation == other.operation &&
        requestId == other.requestId &&
        updateResult == _$dynamicOther.updateResult &&
        optimisticResponse == other.optimisticResponse &&
        updateCacheHandlerKey == other.updateCacheHandlerKey &&
        updateCacheHandlerContext == other.updateCacheHandlerContext &&
        fetchPolicy == other.fetchPolicy &&
        executeOnListen == other.executeOnListen;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, vars.hashCode), operation.hashCode),
                                requestId.hashCode),
                            updateResult.hashCode),
                        optimisticResponse.hashCode),
                    updateCacheHandlerKey.hashCode),
                updateCacheHandlerContext.hashCode),
            fetchPolicy.hashCode),
        executeOnListen.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFetchSearchResultsReq')
          ..add('vars', vars)
          ..add('operation', operation)
          ..add('requestId', requestId)
          ..add('updateResult', updateResult)
          ..add('optimisticResponse', optimisticResponse)
          ..add('updateCacheHandlerKey', updateCacheHandlerKey)
          ..add('updateCacheHandlerContext', updateCacheHandlerContext)
          ..add('fetchPolicy', fetchPolicy)
          ..add('executeOnListen', executeOnListen))
        .toString();
  }
}

class GFetchSearchResultsReqBuilder
    implements Builder<GFetchSearchResultsReq, GFetchSearchResultsReqBuilder> {
  _$GFetchSearchResultsReq _$v;

  _i3.GFetchSearchResultsVarsBuilder _vars;
  _i3.GFetchSearchResultsVarsBuilder get vars =>
      _$this._vars ??= new _i3.GFetchSearchResultsVarsBuilder();
  set vars(_i3.GFetchSearchResultsVarsBuilder vars) => _$this._vars = vars;

  _i4.Operation _operation;
  _i4.Operation get operation => _$this._operation;
  set operation(_i4.Operation operation) => _$this._operation = operation;

  String _requestId;
  String get requestId => _$this._requestId;
  set requestId(String requestId) => _$this._requestId = requestId;

  _i2.GFetchSearchResultsData Function(
      _i2.GFetchSearchResultsData, _i2.GFetchSearchResultsData) _updateResult;
  _i2.GFetchSearchResultsData Function(
          _i2.GFetchSearchResultsData, _i2.GFetchSearchResultsData)
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GFetchSearchResultsData Function(
                  _i2.GFetchSearchResultsData, _i2.GFetchSearchResultsData)
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GFetchSearchResultsDataBuilder _optimisticResponse;
  _i2.GFetchSearchResultsDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GFetchSearchResultsDataBuilder();
  set optimisticResponse(
          _i2.GFetchSearchResultsDataBuilder optimisticResponse) =>
      _$this._optimisticResponse = optimisticResponse;

  String _updateCacheHandlerKey;
  String get updateCacheHandlerKey => _$this._updateCacheHandlerKey;
  set updateCacheHandlerKey(String updateCacheHandlerKey) =>
      _$this._updateCacheHandlerKey = updateCacheHandlerKey;

  Map<String, dynamic> _updateCacheHandlerContext;
  Map<String, dynamic> get updateCacheHandlerContext =>
      _$this._updateCacheHandlerContext;
  set updateCacheHandlerContext(
          Map<String, dynamic> updateCacheHandlerContext) =>
      _$this._updateCacheHandlerContext = updateCacheHandlerContext;

  _i1.FetchPolicy _fetchPolicy;
  _i1.FetchPolicy get fetchPolicy => _$this._fetchPolicy;
  set fetchPolicy(_i1.FetchPolicy fetchPolicy) =>
      _$this._fetchPolicy = fetchPolicy;

  bool _executeOnListen;
  bool get executeOnListen => _$this._executeOnListen;
  set executeOnListen(bool executeOnListen) =>
      _$this._executeOnListen = executeOnListen;

  GFetchSearchResultsReqBuilder() {
    GFetchSearchResultsReq._initializeBuilder(this);
  }

  GFetchSearchResultsReqBuilder get _$this {
    if (_$v != null) {
      _vars = _$v.vars?.toBuilder();
      _operation = _$v.operation;
      _requestId = _$v.requestId;
      _updateResult = _$v.updateResult;
      _optimisticResponse = _$v.optimisticResponse?.toBuilder();
      _updateCacheHandlerKey = _$v.updateCacheHandlerKey;
      _updateCacheHandlerContext = _$v.updateCacheHandlerContext;
      _fetchPolicy = _$v.fetchPolicy;
      _executeOnListen = _$v.executeOnListen;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchSearchResultsReq other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GFetchSearchResultsReq;
  }

  @override
  void update(void Function(GFetchSearchResultsReqBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFetchSearchResultsReq build() {
    _$GFetchSearchResultsReq _$result;
    try {
      _$result = _$v ??
          new _$GFetchSearchResultsReq._(
              vars: vars.build(),
              operation: operation,
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: executeOnListen);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GFetchSearchResultsReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
