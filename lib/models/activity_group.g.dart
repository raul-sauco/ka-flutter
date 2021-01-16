// GENERATED CODE - DO NOT MODIFY BY HAND

part of activity_group;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ActivityGroup> _$activityGroupSerializer =
    new _$ActivityGroupSerializer();

class _$ActivityGroupSerializer implements StructuredSerializer<ActivityGroup> {
  @override
  final Iterable<Type> types = const [ActivityGroup, _$ActivityGroup];
  @override
  final String wireName = 'ActivityGroup';

  @override
  Iterable<Object> serialize(Serializers serializers, ActivityGroup object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  ActivityGroup deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new ActivityGroupBuilder().build();
  }
}

class _$ActivityGroup extends ActivityGroup {
  factory _$ActivityGroup([void Function(ActivityGroupBuilder) updates]) =>
      (new ActivityGroupBuilder()..update(updates)).build();

  _$ActivityGroup._() : super._();

  @override
  ActivityGroup rebuild(void Function(ActivityGroupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActivityGroupBuilder toBuilder() => new ActivityGroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActivityGroup;
  }

  @override
  int get hashCode {
    return 119886072;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ActivityGroup').toString();
  }
}

class ActivityGroupBuilder
    implements Builder<ActivityGroup, ActivityGroupBuilder> {
  _$ActivityGroup _$v;

  ActivityGroupBuilder();

  @override
  void replace(ActivityGroup other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ActivityGroup;
  }

  @override
  void update(void Function(ActivityGroupBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ActivityGroup build() {
    final _$result = _$v ?? new _$ActivityGroup._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
