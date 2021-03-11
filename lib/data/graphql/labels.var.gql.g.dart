// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'labels.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFetchAllLabelsVars> _$gFetchAllLabelsVarsSerializer =
    new _$GFetchAllLabelsVarsSerializer();

class _$GFetchAllLabelsVarsSerializer
    implements StructuredSerializer<GFetchAllLabelsVars> {
  @override
  final Iterable<Type> types = const [
    GFetchAllLabelsVars,
    _$GFetchAllLabelsVars
  ];
  @override
  final String wireName = 'GFetchAllLabelsVars';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GFetchAllLabelsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.endCursor != null) {
      result
        ..add('endCursor')
        ..add(serializers.serialize(object.endCursor,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GFetchAllLabelsVars deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFetchAllLabelsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'endCursor':
          result.endCursor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchAllLabelsVars extends GFetchAllLabelsVars {
  @override
  final String endCursor;

  factory _$GFetchAllLabelsVars(
          [void Function(GFetchAllLabelsVarsBuilder) updates]) =>
      (new GFetchAllLabelsVarsBuilder()..update(updates)).build();

  _$GFetchAllLabelsVars._({this.endCursor}) : super._();

  @override
  GFetchAllLabelsVars rebuild(
          void Function(GFetchAllLabelsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchAllLabelsVarsBuilder toBuilder() =>
      new GFetchAllLabelsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchAllLabelsVars && endCursor == other.endCursor;
  }

  @override
  int get hashCode {
    return $jf($jc(0, endCursor.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFetchAllLabelsVars')
          ..add('endCursor', endCursor))
        .toString();
  }
}

class GFetchAllLabelsVarsBuilder
    implements Builder<GFetchAllLabelsVars, GFetchAllLabelsVarsBuilder> {
  _$GFetchAllLabelsVars _$v;

  String _endCursor;
  String get endCursor => _$this._endCursor;
  set endCursor(String endCursor) => _$this._endCursor = endCursor;

  GFetchAllLabelsVarsBuilder();

  GFetchAllLabelsVarsBuilder get _$this {
    if (_$v != null) {
      _endCursor = _$v.endCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchAllLabelsVars other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GFetchAllLabelsVars;
  }

  @override
  void update(void Function(GFetchAllLabelsVarsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFetchAllLabelsVars build() {
    final _$result = _$v ?? new _$GFetchAllLabelsVars._(endCursor: endCursor);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
