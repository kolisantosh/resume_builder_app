class ReviewModel {
  ReviewModel({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.summary,
    required this.education,
    required this.experience,
    required this.creationDate,
  });

  String id;
  String name;
  String email;
  String phone;
  String summary;
  String education;
  String experience;
  DateTime creationDate;

  factory ReviewModel.fromJson(Map<String, dynamic> json) => ReviewModel(
    id: json["id"],
    name: json["name"]??"",
    email: json["email"]??"",
    phone: json["phone"]??"",
    summary: json["summary"]??"",
    education: json["education"]??"",
    experience: json["experience"]??"",
    creationDate: DateTime.parse(json["creationDate"]),

  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "creationDate": creationDate.toIso8601String(),
  };


  static List<ReviewModel> getListFromJson(List<dynamic> list) {
    List<ReviewModel> unitList = [];
    for (var unit in list) {
      if (unit is String) {
      } else {
        unitList.add(ReviewModel.fromJson(unit));
      }
    }
    return unitList;
  }

}
