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
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'trip_id',
      serializers.serialize(object.tripId, specifiedType: const FullType(int)),
    ];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ActivityGroup deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ActivityGroupBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'trip_id':
          result.tripId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$ActivityGroup extends ActivityGroup {
  @override
  final int id;
  @override
  final String name;
  @override
  final int tripId;

  factory _$ActivityGroup([void Function(ActivityGroupBuilder) updates]) =>
      (new ActivityGroupBuilder()..update(updates)).build();

  _$ActivityGroup._({this.id, this.name, this.tripId}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('ActivityGroup', 'id');
    }
    if (tripId == null) {
      throw new BuiltValueNullFieldError('ActivityGroup', 'tripId');
    }
  }

  @override
  ActivityGroup rebuild(void Function(ActivityGroupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActivityGroupBuilder toBuilder() => new ActivityGroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActivityGroup &&
        id == other.id &&
        name == other.name &&
        tripId == other.tripId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), name.hashCode), tripId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ActivityGroup')
          ..add('id', id)
          ..add('name', name)
          ..add('tripId', tripId))
        .toString();
  }
}

class ActivityGroupBuilder
    implements Builder<ActivityGroup, ActivityGroupBuilder> {
  _$ActivityGroup _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  int _tripId;
  int get tripId => _$this._tripId;
  set tripId(int tripId) => _$this._tripId = tripId;

  ActivityGroupBuilder();

  ActivityGroupBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _tripId = _$v.tripId;
      _$v = null;
    }
    return this;
  }

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
    final _$result =
        _$v ?? new _$ActivityGroup._(id: id, name: name, tripId: tripId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
