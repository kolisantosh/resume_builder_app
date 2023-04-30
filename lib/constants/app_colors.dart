import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AppColors{
  static const Color primaryColor = Color(0xFF3D64C5);
  static const Color secondaryColor = Color(0xE9BBCEF3);
  static const Color grey = Color(0xFF939393);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);

}

showLongToast(String s) {
  Fluttertoast.showToast(
    msg: s,
    toastLength: Toast.LENGTH_LONG,
  );
}

showShortToast(String s) {
  Fluttertoast.showToast(
    msg: s,
    toastLength: Toast.LENGTH_SHORT,
  );
}
