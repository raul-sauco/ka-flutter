// GENERATED CODE - DO NOT MODIFY BY HAND

part of event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Event> _$eventSerializer = new _$EventSerializer();

class _$EventSerializer implements StructuredSerializer<Event> {
  @override
  final Iterable<Type> types = const [Event, _$Event];
  @override
  final String wireName = 'Event';

  @override
  Iterable<Object> serialize(Serializers serializers, Event object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.notes != null) {
      result
        ..add('notes')
        ..add(serializers.serialize(object.notes,
            specifiedType: const FullType(String)));
    }
    if (object.staffNotes != null) {
      result
        ..add('staff_notes')
        ..add(serializers.serialize(object.staffNotes,
            specifiedType: const FullType(String)));
    }
    if (object.activityGroupId != null) {
      result
        ..add('activity_group_id')
        ..add(serializers.serialize(object.activityGroupId,
            specifiedType: const FullType(int)));
    }
    if (object.activityTypeId != null) {
      result
        ..add('activity_type_id')
        ..add(serializers.serialize(object.activityTypeId,
            specifiedType: const FullType(int)));
    }
    if (object.activityTypeName != null) {
      result
        ..add('activityTypeName')
        ..add(serializers.serialize(object.activityTypeName,
            specifiedType: const FullType(String)));
    }
    if (object.date != null) {
      result
        ..add('activity_date')
        ..add(serializers.serialize(object.date,
            specifiedType: const FullType(String)));
    }
    if (object.startTime != null) {
      result
        ..add('start_time')
        ..add(serializers.serialize(object.startTime,
            specifiedType: const FullType(String)));
    }
    if (object.endTime != null) {
      result
        ..add('end_time')
        ..add(serializers.serialize(object.endTime,
            specifiedType: const FullType(String)));
    }
    if (object.inCharge != null) {
      result
        ..add('in_charge')
        ..add(serializers.serialize(object.inCharge,
            specifiedType: const FullType(int)));
    }
    if (object.supplierId != null) {
      result
        ..add('supplier_id')
        ..add(serializers.serialize(object.supplierId,
            specifiedType: const FullType(int)));
    }
    if (object.statusId != null) {
      result
        ..add('status_id')
        ..add(serializers.serialize(object.statusId,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Event deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EventBuilder();

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
        case 'notes':
          result.notes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'staff_notes':
          result.staffNotes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'activity_group_id':
          result.activityGroupId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'activity_type_id':
          result.activityTypeId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'activityTypeName':
          result.activityTypeName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'activity_date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'start_time':
          result.startTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'end_time':
          result.endTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'in_charge':
          result.inCharge = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'supplier_id':
          result.supplierId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'status_id':
          result.statusId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Event extends Event {
  @override
  final int id;
  @override
  final String name;
  @override
  final String notes;
  @override
  final String staffNotes;
  @override
  final int activityGroupId;
  @override
  final int activityTypeId;
  @override
  final String activityTypeName;
  @override
  final String date;
  @override
  final String startTime;
  @override
  final String endTime;
  @override
  final int inCharge;
  @override
  final int supplierId;
  @override
  final int statusId;

  factory _$Event([void Function(EventBuilder) updates]) =>
      (new EventBuilder()..update(updates)).build();

  _$Event._(
      {this.id,
      this.name,
      this.notes,
      this.staffNotes,
      this.activityGroupId,
      this.activityTypeId,
      this.activityTypeName,
      this.date,
      this.startTime,
      this.endTime,
      this.inCharge,
      this.supplierId,
      this.statusId})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Event', 'id');
    }
  }

  @override
  Event rebuild(void Function(EventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventBuilder toBuilder() => new EventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Event &&
        id == other.id &&
        name == other.name &&
        notes == other.notes &&
        staffNotes == other.staffNotes &&
        activityGroupId == other.activityGroupId &&
        activityTypeId == other.activityTypeId &&
        activityTypeName == other.activityTypeName &&
        date == other.date &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        inCharge == other.inCharge &&
        supplierId == other.supplierId &&
        statusId == other.statusId;
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
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc(0, id.hashCode),
                                                    name.hashCode),
                                                notes.hashCode),
                                            staffNotes.hashCode),
                                        activityGroupId.hashCode),
                                    activityTypeId.hashCode),
                                activityTypeName.hashCode),
                            date.hashCode),
                        startTime.hashCode),
                    endTime.hashCode),
                inCharge.hashCode),
            supplierId.hashCode),
        statusId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Event')
          ..add('id', id)
          ..add('name', name)
          ..add('notes', notes)
          ..add('staffNotes', staffNotes)
          ..add('activityGroupId', activityGroupId)
          ..add('activityTypeId', activityTypeId)
          ..add('activityTypeName', activityTypeName)
          ..add('date', date)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('inCharge', inCharge)
          ..add('supplierId', supplierId)
          ..add('statusId', statusId))
        .toString();
  }
}

class EventBuilder implements Builder<Event, EventBuilder> {
  _$Event _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _notes;
  String get notes => _$this._notes;
  set notes(String notes) => _$this._notes = notes;

  String _staffNotes;
  String get staffNotes => _$this._staffNotes;
  set staffNotes(String staffNotes) => _$this._staffNotes = staffNotes;

  int _activityGroupId;
  int get activityGroupId => _$this._activityGroupId;
  set activityGroupId(int activityGroupId) =>
      _$this._activityGroupId = activityGroupId;

  int _activityTypeId;
  int get activityTypeId => _$this._activityTypeId;
  set activityTypeId(int activityTypeId) =>
      _$this._activityTypeId = activityTypeId;

  String _activityTypeName;
  String get activityTypeName => _$this._activityTypeName;
  set activityTypeName(String activityTypeName) =>
      _$this._activityTypeName = activityTypeName;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  String _startTime;
  String get startTime => _$this._startTime;
  set startTime(String startTime) => _$this._startTime = startTime;

  String _endTime;
  String get endTime => _$this._endTime;
  set endTime(String endTime) => _$this._endTime = endTime;

  int _inCharge;
  int get inCharge => _$this._inCharge;
  set inCharge(int inCharge) => _$this._inCharge = inCharge;

  int _supplierId;
  int get supplierId => _$this._supplierId;
  set supplierId(int supplierId) => _$this._supplierId = supplierId;

  int _statusId;
  int get statusId => _$this._statusId;
  set statusId(int statusId) => _$this._statusId = statusId;

  EventBuilder();

  EventBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _notes = _$v.notes;
      _staffNotes = _$v.staffNotes;
      _activityGroupId = _$v.activityGroupId;
      _activityTypeId = _$v.activityTypeId;
      _activityTypeName = _$v.activityTypeName;
      _date = _$v.date;
      _startTime = _$v.startTime;
      _endTime = _$v.endTime;
      _inCharge = _$v.inCharge;
      _supplierId = _$v.supplierId;
      _statusId = _$v.statusId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Event other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Event;
  }

  @override
  void update(void Function(EventBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Event build() {
    final _$result = _$v ??
        new _$Event._(
            id: id,
            name: name,
            notes: notes,
            staffNotes: staffNotes,
            activityGroupId: activityGroupId,
            activityTypeId: activityTypeId,
            activityTypeName: activityTypeName,
            date: date,
            startTime: startTime,
            endTime: endTime,
            inCharge: inCharge,
            supplierId: supplierId,
            statusId: statusId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
