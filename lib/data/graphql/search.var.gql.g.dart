// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFetchSearchResultsVars> _$gFetchSearchResultsVarsSerializer =
    new _$GFetchSearchResultsVarsSerializer();

class _$GFetchSearchResultsVarsSerializer
    implements StructuredSerializer<GFetchSearchResultsVars> {
  @override
  final Iterable<Type> types = const [
    GFetchSearchResultsVars,
    _$GFetchSearchResultsVars
  ];
  @override
  final String wireName = 'GFetchSearchResultsVars';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GFetchSearchResultsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'searchQuery',
      serializers.serialize(object.searchQuery,
          specifiedType: const FullType(String)),
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
  GFetchSearchResultsVars deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFetchSearchResultsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'searchQuery':
          result.searchQuery = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$GFetchSearchResultsVars extends GFetchSearchResultsVars {
  @override
  final String searchQuery;
  @override
  final String endCursor;

  factory _$GFetchSearchResultsVars(
          [void Function(GFetchSearchResultsVarsBuilder) updates]) =>
      (new GFetchSearchResultsVarsBuilder()..update(updates)).build();

  _$GFetchSearchResultsVars._({this.searchQuery, this.endCursor}) : super._() {
    if (searchQuery == null) {
      throw new BuiltValueNullFieldError(
          'GFetchSearchResultsVars', 'searchQuery');
    }
  }

  @override
  GFetchSearchResultsVars rebuild(
          void Function(GFetchSearchResultsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchSearchResultsVarsBuilder toBuilder() =>
      new GFetchSearchResultsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchSearchResultsVars &&
        searchQuery == other.searchQuery &&
        endCursor == other.endCursor;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, searchQuery.hashCode), endCursor.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFetchSearchResultsVars')
          ..add('searchQuery', searchQuery)
          ..add('endCursor', endCursor))
        .toString();
  }
}

class GFetchSearchResultsVarsBuilder
    implements
        Builder<GFetchSearchResultsVars, GFetchSearchResultsVarsBuilder> {
  _$GFetchSearchResultsVars _$v;

  String _searchQuery;
  String get searchQuery => _$this._searchQuery;
  set searchQuery(String searchQuery) => _$this._searchQuery = searchQuery;

  String _endCursor;
  String get endCursor => _$this._endCursor;
  set endCursor(String endCursor) => _$this._endCursor = endCursor;

  GFetchSearchResultsVarsBuilder();

  GFetchSearchResultsVarsBuilder get _$this {
    if (_$v != null) {
      _searchQuery = _$v.searchQuery;
      _endCursor = _$v.endCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchSearchResultsVars other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GFetchSearchResultsVars;
  }

  @override
  void update(void Function(GFetchSearchResultsVarsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFetchSearchResultsVars build() {
    final _$result = _$v ??
        new _$GFetchSearchResultsVars._(
            searchQuery: searchQuery, endCursor: endCursor);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
