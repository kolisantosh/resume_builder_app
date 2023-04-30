class ResumeModel {
  ResumeModel({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.summary,
    required this.education,
    required this.experience,
    this.creationDate,
  });

  int id;
  String name;
  String email;
  String phone;
  String summary;
  String education;
  String experience;
  DateTime? creationDate;

  factory ResumeModel.fromJson(Map<String, dynamic> json) => ResumeModel(
    id: json["id"],
    name: json["name"]??"",
    email: json["email"]??"",
    phone: json["phone"]??"",
    summary: json["summary"]??"",
    education: json["education"]??"",
    experience: json["experience"]??"",
    creationDate: DateTime.parse(json["creationDate"])??null,

  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "email": email,
    "phone": phone,
    "summary": summary,
    "education": education,
    "experience": experience,
    "creationDate": creationDate!.toIso8601String(),
  };


  static List<ResumeModel> getListFromJson(List<dynamic> list) {
    List<ResumeModel> unitList = [];
    for (var unit in list) {
      if (unit is String) {
      } else {
        unitList.add(ResumeModel.fromJson(unit));
      }
    }
    return unitList;
  }

}
