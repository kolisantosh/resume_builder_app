import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume_builder_app/screen/resume_form.dart';

import '../controller/common_controller.dart';

class ResumeList extends StatefulWidget {
  const ResumeList({Key? key}) : super(key: key);

  @override
  State<ResumeList> createState() => _ResumeListState();
}

class _ResumeListState extends State<ResumeList> {
  final commonController=Get.put(CommonController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Container()

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if(mounted) {
            // _displayTextInputDialog(context);
            Get.to(ResumeForm());
          }
        },
        child: const Icon(Icons.add),
      ),

    );
  }
}
