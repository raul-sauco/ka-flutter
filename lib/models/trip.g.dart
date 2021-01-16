// GENERATED CODE - DO NOT MODIFY BY HAND

part of trip;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Trip> _$tripSerializer = new _$TripSerializer();

class _$TripSerializer implements StructuredSerializer<Trip> {
  @override
  final Iterable<Type> types = const [Trip, _$Trip];
  @override
  final String wireName = 'Trip';

  @override
  Iterable<Object> serialize(Serializers serializers, Trip object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.tripTypeId != null) {
      result
        ..add('trip_type_id')
        ..add(serializers.serialize(object.tripTypeId,
            specifiedType: const FullType(int)));
    }
    if (object.startDate != null) {
      result
        ..add('start_date')
        ..add(serializers.serialize(object.startDate,
            specifiedType: const FullType(String)));
    }
    if (object.endDate != null) {
      result
        ..add('end_date')
        ..add(serializers.serialize(object.endDate,
            specifiedType: const FullType(String)));
    }
    if (object.headguideId != null) {
      result
        ..add('headguide_id')
        ..add(serializers.serialize(object.headguideId,
            specifiedType: const FullType(int)));
    }
    if (object.logisticsCoordinatorId != null) {
      result
        ..add('logistics_coordinator_id')
        ..add(serializers.serialize(object.logisticsCoordinatorId,
            specifiedType: const FullType(int)));
    }
    if (object.programManagerId != null) {
      result
        ..add('program_manager_id')
        ..add(serializers.serialize(object.programManagerId,
            specifiedType: const FullType(int)));
    }
    if (object.numOfTeachers != null) {
      result
        ..add('num_of_teachers')
        ..add(serializers.serialize(object.numOfTeachers,
            specifiedType: const FullType(int)));
    }
    if (object.numOfStudents != null) {
      result
        ..add('num_of_students')
        ..add(serializers.serialize(object.numOfStudents,
            specifiedType: const FullType(int)));
    }
    if (object.numOfFemaleStudents != null) {
      result
        ..add('num_of_female_students')
        ..add(serializers.serialize(object.numOfFemaleStudents,
            specifiedType: const FullType(int)));
    }
    if (object.numOfMaleStudents != null) {
      result
        ..add('num_of_male_students')
        ..add(serializers.serialize(object.numOfMaleStudents,
            specifiedType: const FullType(int)));
    }
    if (object.locationId != null) {
      result
        ..add('location_id')
        ..add(serializers.serialize(object.locationId,
            specifiedType: const FullType(int)));
    }
    if (object.schoolId != null) {
      result
        ..add('school_id')
        ..add(serializers.serialize(object.schoolId,
            specifiedType: const FullType(int)));
    }
    if (object.grade != null) {
      result
        ..add('grade')
        ..add(serializers.serialize(object.grade,
            specifiedType: const FullType(String)));
    }
    if (object.documents != null) {
      result
        ..add('documents')
        ..add(serializers.serialize(object.documents,
            specifiedType: const FullType(String)));
    }
    if (object.healthInfo != null) {
      result
        ..add('health_info')
        ..add(serializers.serialize(object.healthInfo,
            specifiedType: const FullType(String)));
    }
    if (object.notes != null) {
      result
        ..add('notes')
        ..add(serializers.serialize(object.notes,
            specifiedType: const FullType(String)));
    }
    if (object.studentCode != null) {
      result
        ..add('student_code')
        ..add(serializers.serialize(object.studentCode,
            specifiedType: const FullType(String)));
    }
    if (object.teacherCode != null) {
      result
        ..add('teacher_code')
        ..add(serializers.serialize(object.teacherCode,
            specifiedType: const FullType(String)));
    }
    if (object.activityGroups != null) {
      result
        ..add('activityGroups')
        ..add(serializers.serialize(object.activityGroups,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ActivityGroup)])));
    }
    return result;
  }

  @override
  Trip deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TripBuilder();

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
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'trip_type_id':
          result.tripTypeId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'start_date':
          result.startDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'end_date':
          result.endDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'headguide_id':
          result.headguideId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'logistics_coordinator_id':
          result.logisticsCoordinatorId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'program_manager_id':
          result.programManagerId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'num_of_teachers':
          result.numOfTeachers = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'num_of_students':
          result.numOfStudents = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'num_of_female_students':
          result.numOfFemaleStudents = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'num_of_male_students':
          result.numOfMaleStudents = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'location_id':
          result.locationId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'school_id':
          result.schoolId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'grade':
          result.grade = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'documents':
          result.documents = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'health_info':
          result.healthInfo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'notes':
          result.notes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'student_code':
          result.studentCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'teacher_code':
          result.teacherCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'activityGroups':
          result.activityGroups.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ActivityGroup)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Trip extends Trip {
  @override
  final int id;
  @override
  final int status;
  @override
  final String name;
  @override
  final int tripTypeId;
  @override
  final String startDate;
  @override
  final String endDate;
  @override
  final int headguideId;
  @override
  final int logisticsCoordinatorId;
  @override
  final int programManagerId;
  @override
  final int numOfTeachers;
  @override
  final int numOfStudents;
  @override
  final int numOfFemaleStudents;
  @override
  final int numOfMaleStudents;
  @override
  final int locationId;
  @override
  final int schoolId;
  @override
  final String grade;
  @override
  final String documents;
  @override
  final String healthInfo;
  @override
  final String notes;
  @override
  final String studentCode;
  @override
  final String teacherCode;
  @override
  final BuiltList<ActivityGroup> activityGroups;

  factory _$Trip([void Function(TripBuilder) updates]) =>
      (new TripBuilder()..update(updates)).build();

  _$Trip._(
      {this.id,
      this.status,
      this.name,
      this.tripTypeId,
      this.startDate,
      this.endDate,
      this.headguideId,
      this.logisticsCoordinatorId,
      this.programManagerId,
      this.numOfTeachers,
      this.numOfStudents,
      this.numOfFemaleStudents,
      this.numOfMaleStudents,
      this.locationId,
      this.schoolId,
      this.grade,
      this.documents,
      this.healthInfo,
      this.notes,
      this.studentCode,
      this.teacherCode,
      this.activityGroups})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Trip', 'id');
    }
  }

  @override
  Trip rebuild(void Function(TripBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TripBuilder toBuilder() => new TripBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Trip &&
        id == other.id &&
        status == other.status &&
        name == other.name &&
        tripTypeId == other.tripTypeId &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        headguideId == other.headguideId &&
        logisticsCoordinatorId == other.logisticsCoordinatorId &&
        programManagerId == other.programManagerId &&
        numOfTeachers == other.numOfTeachers &&
        numOfStudents == other.numOfStudents &&
        numOfFemaleStudents == other.numOfFemaleStudents &&
        numOfMaleStudents == other.numOfMaleStudents &&
        locationId == other.locationId &&
        schoolId == other.schoolId &&
        grade == other.grade &&
        documents == other.documents &&
        healthInfo == other.healthInfo &&
        notes == other.notes &&
        studentCode == other.studentCode &&
        teacherCode == other.teacherCode &&
        activityGroups == other.activityGroups;
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
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc(0, id.hashCode), status.hashCode), name.hashCode),
                                                                                tripTypeId.hashCode),
                                                                            startDate.hashCode),
                                                                        endDate.hashCode),
                                                                    headguideId.hashCode),
                                                                logisticsCoordinatorId.hashCode),
                                                            programManagerId.hashCode),
                                                        numOfTeachers.hashCode),
                                                    numOfStudents.hashCode),
                                                numOfFemaleStudents.hashCode),
                                            numOfMaleStudents.hashCode),
                                        locationId.hashCode),
                                    schoolId.hashCode),
                                grade.hashCode),
                            documents.hashCode),
                        healthInfo.hashCode),
                    notes.hashCode),
                studentCode.hashCode),
            teacherCode.hashCode),
        activityGroups.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Trip')
          ..add('id', id)
          ..add('status', status)
          ..add('name', name)
          ..add('tripTypeId', tripTypeId)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('headguideId', headguideId)
          ..add('logisticsCoordinatorId', logisticsCoordinatorId)
          ..add('programManagerId', programManagerId)
          ..add('numOfTeachers', numOfTeachers)
          ..add('numOfStudents', numOfStudents)
          ..add('numOfFemaleStudents', numOfFemaleStudents)
          ..add('numOfMaleStudents', numOfMaleStudents)
          ..add('locationId', locationId)
          ..add('schoolId', schoolId)
          ..add('grade', grade)
          ..add('documents', documents)
          ..add('healthInfo', healthInfo)
          ..add('notes', notes)
          ..add('studentCode', studentCode)
          ..add('teacherCode', teacherCode)
          ..add('activityGroups', activityGroups))
        .toString();
  }
}

class TripBuilder implements Builder<Trip, TripBuilder> {
  _$Trip _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  int _tripTypeId;
  int get tripTypeId => _$this._tripTypeId;
  set tripTypeId(int tripTypeId) => _$this._tripTypeId = tripTypeId;

  String _startDate;
  String get startDate => _$this._startDate;
  set startDate(String startDate) => _$this._startDate = startDate;

  String _endDate;
  String get endDate => _$this._endDate;
  set endDate(String endDate) => _$this._endDate = endDate;

  int _headguideId;
  int get headguideId => _$this._headguideId;
  set headguideId(int headguideId) => _$this._headguideId = headguideId;

  int _logisticsCoordinatorId;
  int get logisticsCoordinatorId => _$this._logisticsCoordinatorId;
  set logisticsCoordinatorId(int logisticsCoordinatorId) =>
      _$this._logisticsCoordinatorId = logisticsCoordinatorId;

  int _programManagerId;
  int get programManagerId => _$this._programManagerId;
  set programManagerId(int programManagerId) =>
      _$this._programManagerId = programManagerId;

  int _numOfTeachers;
  int get numOfTeachers => _$this._numOfTeachers;
  set numOfTeachers(int numOfTeachers) => _$this._numOfTeachers = numOfTeachers;

  int _numOfStudents;
  int get numOfStudents => _$this._numOfStudents;
  set numOfStudents(int numOfStudents) => _$this._numOfStudents = numOfStudents;

  int _numOfFemaleStudents;
  int get numOfFemaleStudents => _$this._numOfFemaleStudents;
  set numOfFemaleStudents(int numOfFemaleStudents) =>
      _$this._numOfFemaleStudents = numOfFemaleStudents;

  int _numOfMaleStudents;
  int get numOfMaleStudents => _$this._numOfMaleStudents;
  set numOfMaleStudents(int numOfMaleStudents) =>
      _$this._numOfMaleStudents = numOfMaleStudents;

  int _locationId;
  int get locationId => _$this._locationId;
  set locationId(int locationId) => _$this._locationId = locationId;

  int _schoolId;
  int get schoolId => _$this._schoolId;
  set schoolId(int schoolId) => _$this._schoolId = schoolId;

  String _grade;
  String get grade => _$this._grade;
  set grade(String grade) => _$this._grade = grade;

  String _documents;
  String get documents => _$this._documents;
  set documents(String documents) => _$this._documents = documents;

  String _healthInfo;
  String get healthInfo => _$this._healthInfo;
  set healthInfo(String healthInfo) => _$this._healthInfo = healthInfo;

  String _notes;
  String get notes => _$this._notes;
  set notes(String notes) => _$this._notes = notes;

  String _studentCode;
  String get studentCode => _$this._studentCode;
  set studentCode(String studentCode) => _$this._studentCode = studentCode;

  String _teacherCode;
  String get teacherCode => _$this._teacherCode;
  set teacherCode(String teacherCode) => _$this._teacherCode = teacherCode;

  ListBuilder<ActivityGroup> _activityGroups;
  ListBuilder<ActivityGroup> get activityGroups =>
      _$this._activityGroups ??= new ListBuilder<ActivityGroup>();
  set activityGroups(ListBuilder<ActivityGroup> activityGroups) =>
      _$this._activityGroups = activityGroups;

  TripBuilder();

  TripBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _status = _$v.status;
      _name = _$v.name;
      _tripTypeId = _$v.tripTypeId;
      _startDate = _$v.startDate;
      _endDate = _$v.endDate;
      _headguideId = _$v.headguideId;
      _logisticsCoordinatorId = _$v.logisticsCoordinatorId;
      _programManagerId = _$v.programManagerId;
      _numOfTeachers = _$v.numOfTeachers;
      _numOfStudents = _$v.numOfStudents;
      _numOfFemaleStudents = _$v.numOfFemaleStudents;
      _numOfMaleStudents = _$v.numOfMaleStudents;
      _locationId = _$v.locationId;
      _schoolId = _$v.schoolId;
      _grade = _$v.grade;
      _documents = _$v.documents;
      _healthInfo = _$v.healthInfo;
      _notes = _$v.notes;
      _studentCode = _$v.studentCode;
      _teacherCode = _$v.teacherCode;
      _activityGroups = _$v.activityGroups?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Trip other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Trip;
  }

  @override
  void update(void Function(TripBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Trip build() {
    _$Trip _$result;
    try {
      _$result = _$v ??
          new _$Trip._(
              id: id,
              status: status,
              name: name,
              tripTypeId: tripTypeId,
              startDate: startDate,
              endDate: endDate,
              headguideId: headguideId,
              logisticsCoordinatorId: logisticsCoordinatorId,
              programManagerId: programManagerId,
              numOfTeachers: numOfTeachers,
              numOfStudents: numOfStudents,
              numOfFemaleStudents: numOfFemaleStudents,
              numOfMaleStudents: numOfMaleStudents,
              locationId: locationId,
              schoolId: schoolId,
              grade: grade,
              documents: documents,
              healthInfo: healthInfo,
              notes: notes,
              studentCode: studentCode,
              teacherCode: teacherCode,
              activityGroups: _activityGroups?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'activityGroups';
        _activityGroups?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Trip', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
