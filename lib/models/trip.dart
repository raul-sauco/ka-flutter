library trip;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

part 'trip.g.dart';

/// Built value will use this class to generate the Trip class.
///
/// All this boilerplate code can be generated using the vscode extension:
///
/// https://marketplace.visualstudio.com/items?itemName=yongzhenlow.dart-built-value-snippets
///
/// "bvd" for imports.
/// "bvts" for the class with serializers.
abstract class Trip implements Built<Trip, TripBuilder> {
  // Manually add the fields.
  int get id;
  @nullable
  int get status;
  @nullable
  String get name;
  @nullable
  @BuiltValueField(wireName: 'trip_type_id')
  int get tripTypeId;
  @nullable
  @BuiltValueField(wireName: 'start_date')
  String get startDate;
  @nullable
  @BuiltValueField(wireName: 'end_date')
  String get endDate;
  @nullable
  @BuiltValueField(wireName: 'headguide_id')
  int get headguideId;
  @nullable
  @BuiltValueField(wireName: 'logistics_coordinator_id')
  int get logisticsCoordinatorId;
  @nullable
  @BuiltValueField(wireName: 'program_manager_id')
  int get programManagerId;
  @nullable
  @BuiltValueField(wireName: 'num_of_teachers')
  int get numOfTeachers;
  @nullable
  @BuiltValueField(wireName: 'num_of_students')
  int get numOfStudents;
  @nullable
  @BuiltValueField(wireName: 'num_of_female_students')
  int get numOfFemaleStudents;
  @nullable
  @BuiltValueField(wireName: 'num_of_male_students')
  int get numOfMaleStudents;
  @nullable
  @BuiltValueField(wireName: 'location_id')
  int get locationId;
  @nullable
  @BuiltValueField(wireName: 'school_id')
  int get schoolId;
  @nullable
  String get grade;
  @nullable
  String get documents;
  @nullable
  @BuiltValueField(wireName: 'health_info')
  String get healthInfo;
  @nullable
  String get notes;
  @nullable
  @BuiltValueField(wireName: 'student_code')
  String get studentCode;
  @nullable
  @BuiltValueField(wireName: 'teacher_code')
  String get teacherCode;

  Trip._();

  // Both factory constructors below are equivalent.
  // factory BuiltUser([void Function(BuiltUserBuilder) updates]) = _$BuiltUser;
  factory Trip([updates(TripBuilder b)]) = _$Trip;

  String toJson() {
    return json.encode(serializers.serializeWith(Trip.serializer, this));
  }

  static Trip fromJson(String jsonString) {
    return serializers.deserializeWith(
        Trip.serializer, json.decode(jsonString));
  }

  // The generator has a bug here, generates with a capital first letter.
  // static Serializer<BuiltUser> get serializer => _$BuiltUserSerializer;
  static Serializer<Trip> get serializer => _$tripSerializer;
}
