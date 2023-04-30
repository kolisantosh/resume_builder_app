import 'package:flutter/material.dart';
import 'package:resume_builder_app/screen/resume_form.dart';

import 'local/table.dart';

AppDatabase db = AppDatabase();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Resume Builder',
      home: ResumeForm(),
    );
  }
}

