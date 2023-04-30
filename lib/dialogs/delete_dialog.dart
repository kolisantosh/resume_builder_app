import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

deleteDialog({required VoidCallback onPress}) {
  Get.defaultDialog(
    // backgroundColor: Color.fromRGBO(255, 189, 48, 1),
    // contentPadding: EdgeInsets.zero,
    // titlePadding: EdgeInsets.zero,
    title:"?Delete this Map",
    middleText: "Your offline map will be deleted",
    textCancel: "Cancel",
    textConfirm: "Yes",
    onCancel: () {
      Get.back();
    },
    onConfirm:onPress,
  );
}
