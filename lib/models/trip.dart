/// Trip model.
///
/// Generated using this awesome! online generator
/// https://javiercbk.github.io/json_to_dart/
class Trip {
  int id;
  int status;
  int tripTypeId;
  String startDate;
  String endDate;
  int headteacher;
  int headguideId;
  int logisticsCoordinatorId;
  int programManagerId;
  int numOfTeachers;
  int numOfStudents;
  int numOfFemaleStudents;
  int numOfMaleStudents;
  int locationId;
  int schoolId;
  int grade;
  String documents;
  String healthInfo;
  String notes;
  String studentCode;
  String teacherCode;
  String name;

  Trip(
      {this.id,
      this.status,
      this.tripTypeId,
      this.startDate,
      this.endDate,
      this.headteacher,
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
      this.name});

  Trip.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    status = json['status'];
    tripTypeId = json['trip_type_id'];
    startDate = json['start_date'];
    // endDate = json['end_date'];
    // headteacher = json['headteacher'];
    // headguideId = json['headguide_id'];
    // logisticsCoordinatorId = json['logistics_coordinator_id'];
    // programManagerId = json['program_manager_id'];
    // numOfTeachers = json['num_of_teachers'];
    // numOfStudents = json['num_of_students'];
    // numOfFemaleStudents = json['num_of_female_students'];
    // numOfMaleStudents = json['num_of_male_students'];
    // locationId = json['location_id'];
    // schoolId = json['school_id'];
    // grade = json['grade'];
    // documents = json['documents'];
    // healthInfo = json['health_info'];
    // notes = json['notes'];
    studentCode = json['student_code'];
    teacherCode = json['teacher_code'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['status'] = this.status;
    data['trip_type_id'] = this.tripTypeId;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    data['headteacher'] = this.headteacher;
    data['headguide_id'] = this.headguideId;
    data['logistics_coordinator_id'] = this.logisticsCoordinatorId;
    data['program_manager_id'] = this.programManagerId;
    data['num_of_teachers'] = this.numOfTeachers;
    data['num_of_students'] = this.numOfStudents;
    data['num_of_female_students'] = this.numOfFemaleStudents;
    data['num_of_male_students'] = this.numOfMaleStudents;
    data['location_id'] = this.locationId;
    data['school_id'] = this.schoolId;
    data['grade'] = this.grade;
    data['documents'] = this.documents;
    data['health_info'] = this.healthInfo;
    data['notes'] = this.notes;
    data['student_code'] = this.studentCode;
    data['teacher_code'] = this.teacherCode;
    data['name'] = this.name;
    return data;
  }
}
