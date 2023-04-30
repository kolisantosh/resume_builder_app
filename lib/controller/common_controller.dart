import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'package:drift/drift.dart' as drift;
import '../local/table.dart';
import '../main.dart';

class CommonController extends GetxController {
  var isDataProcessing = false.obs;

  @override
  void onInit() {
    getResumeList();

    super.onInit();
  }

  getResumeList() async {
    try {
      isDataProcessing.value=true;
      await db.select(db.resumes).get();
      isDataProcessing.value=false;

    }catch(e){
      debugPrint("Error=>$e");
    }
  }
  addResume() async {
    try {
      isDataProcessing.value=true;

      var id = await db.into(db.resumes).insert(ResumesCompanion.insert(
        name: '', email: '', phone: '', summary: '', experience: '', education: '',
      ));

      isDataProcessing.value=false;

    }catch(e){
      debugPrint("Error=>$e");
    }
  }
  updateResume(itemid) async {
    try {
      isDataProcessing.value=true;
      var id = await (db.update(db.resumes)
        ..where((e) => e.id.equals(itemid)))
        .write(ResumesCompanion(
        name:drift.Value(''), email: drift.Value(''), phone: drift.Value(''), summary: drift.Value(''),
        experience: drift.Value(''), education: drift.Value(''),
      ));
      isDataProcessing.value=false;

    }catch(e){
      debugPrint("Error=>$e");
    }
  }
  deleteResume(itemid) async {
    try {
      isDataProcessing.value=true;
      await (db.delete(db.resumes)..where((t) => t.id.equals(itemid))).go();

      isDataProcessing.value=false;
    }catch(e){
      debugPrint("Error=>$e");
    }
  }

}
