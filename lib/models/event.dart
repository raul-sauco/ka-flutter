library event;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

part 'event.g.dart';

/// Built value will use to generate Event.
abstract class Event implements Built<Event, EventBuilder> {
  int get id;
  @nullable
  String get name;
  @nullable
  String get notes;
  @nullable
  @BuiltValueField(wireName: 'staff_notes')
  String get staffNotes;
  @nullable
  @BuiltValueField(wireName: 'activity_group_id')
  int get activityGroupId;
  @nullable
  @BuiltValueField(wireName: 'activity_type_id')
  int get activityTypeId;
  @nullable
  String get activityTypeName;
  @nullable
  @BuiltValueField(wireName: 'activity_date')
  String get date;
  @nullable
  @BuiltValueField(wireName: 'start_time')
  String get startTime;
  @nullable
  @BuiltValueField(wireName: 'end_time')
  String get endTime;
  @nullable
  @BuiltValueField(wireName: 'in_charge')
  int get inCharge;
  @nullable
  @BuiltValueField(wireName: 'supplier_id')
  int get supplierId;
  @nullable
  @BuiltValueField(wireName: 'status_id')
  int get statusId;

  String getName() {
    return name ?? '';
  }

  String getActivityTypeName() {
    return activityTypeName ?? '';
  }

  String getNotes() {
    return notes ?? '';
  }

  String getStaffNotes() {
    return staffNotes ?? '';
  }

  Event._();

  factory Event([void Function(EventBuilder) updates]) = _$Event;

  String toJson() {
    return json.encode(serializers.serializeWith(Event.serializer, this));
  }

  static Event fromJson(String jsonString) {
    return serializers.deserializeWith(
        Event.serializer, json.decode(jsonString));
  }

  static Serializer<Event> get serializer => _$eventSerializer;
}
