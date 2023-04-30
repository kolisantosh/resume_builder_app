import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume_builder_app/screen/resume_form.dart';
import 'package:resume_builder_app/screen/resume_list.dart';

import 'controller/network_binding.dart';
import 'local/table.dart';

AppDatabase db = AppDatabase();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Resume Builder',
      initialBinding: NetworkBinding(),
      home: ResumeList(),
    );
  }
}

