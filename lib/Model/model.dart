class SchoolModel {
  String? SchoolName;
  String? SchoolAddress;
  String? NumberOfStudents;
  String? NumberOfTeachers;

  SchoolModel.fromjson(Map<String,dynamic> json){

    SchoolName=json['School Name'] ;
    SchoolAddress=json['School Address'] ;
    NumberOfStudents=json['Number of Students'] ;
    NumberOfTeachers=json['Number of Teachers'] ;


  }

}