import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'package:drift/drift.dart' as drift;
import '../local/table.dart';
import '../main.dart';
import '../model/resume_model.dart';

class CommonController extends GetxController {
  var isDataProcessing = false.obs;

  List<ResumeModel> myList =
      List<ResumeModel>.empty(growable: true).obs;

  @override
  void onInit() {
    getResumeList();

    super.onInit();
  }

  getResumeList() async {
    try {
      // isDataProcessing.value=true;
      final data=await db.select(db.resumes).get();
      if (data.isNotEmpty) {
        print(data.toList());
        print(data.toString());
        myList.addAll(data.map((item) {
          return ResumeModel(
            id: item.id,
            name: item.name,
            email: item.email,
            phone: item.phone,
            education: item.education,
            experience: item.experience,
              summary: item.summary, creationDate: item.creationDate!
          );
        }).toList());
      }
      isDataProcessing.value=false;

    }catch(e){
      debugPrint("Error=>$e");
    }
  }
  addResume(ResumeModel item) async {
    try {
      isDataProcessing.value=true;
      print("++++++++++++++++"+item.toJson().toString());

      var id = await db.into(db.resumes).insert(ResumesCompanion.insert(
        name: item.name, email: item.email, phone: item.phone, summary: item.summary, experience: item.experience,
        education: item.education,
      ));

      print("++++++++++++++++"+id.toString());

      // isDataProcessing.value=false;

      Get.back();

    }catch(e){
      debugPrint("Error=>$e");
    }
  }
  updateResume(ResumeModel item) async {
    try {
      isDataProcessing.value=true;
      var id = await (db.update(db.resumes)
        ..where((e) => e.id.equals(item.id)))
        .write(ResumesCompanion(
        name:drift.Value(item.name), email: drift.Value(item.email), phone: drift.Value(item.phone), summary: drift.Value(item.summary),
        experience: drift.Value(item.experience), education: drift.Value(item.education),
      ));
      // isDataProcessing.value=false;
      Get.back();

    }catch(e){
      debugPrint("Error=>$e");
    }
  }
  deleteResume(ResumeModel item) async {
    try {
      // isDataProcessing.value=true;
      await (db.delete(db.resumes)..where((t) => t.id.equals(item.id))).go();

      // isDataProcessing.value=false;

      Get.back();
    }catch(e){
      debugPrint("Error=>$e");
    }
  }

}
