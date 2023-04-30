import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume_builder_app/screen/resume_form.dart';

import '../constants/app_colors.dart';
import '../controller/common_controller.dart';
import '../dialogs/delete_dialog.dart';
import '../model/resume_model.dart';

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

          Expanded   (
            child: RefreshIndicator(
                onRefresh: () async {
                  commonController.getResumeList();
                },
                child: Obx(
                      () =>commonController.isDataProcessing.value?const Center(child: CircularProgressIndicator(),): ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                      itemCount: commonController.myList.length,
                      // reverse: true,
                      itemBuilder: (context, index) {
                        ResumeModel item =
                        commonController.myList[index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              PopupMenuButton(
                                  padding: EdgeInsets.zero,
                                  icon: const Icon(Icons.more_vert,
                                      color: AppColors.primaryColor),
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0))),
                                  onSelected: (x) async {
                                    if (x == "view") {
                                      Get.to(ResumeForm());

                                    } else if (x == "update") {
                                      Get.to(ResumeForm(item: item));


                                    }else if (x == "delete") {
                                      deleteDialog(
                                        onPress:() {
                                          commonController.deleteResume(item);

                                        },
                                      );
                                    }
                                  },
                                  itemBuilder: (BuildContext context) =>
                                  <PopupMenuEntry>[
                                    PopupMenuItem(
                                      onTap: () {},
                                      value: "view",
                                      child: const Text("View"),
                                    ),
                                    PopupMenuItem(
                                      onTap: () {},
                                      value: "update",
                                      child: const Text("Update"),
                                    ),
                                    PopupMenuItem(
                                      onTap: () {},
                                      value: "delete",
                                      child: const Text("Delete"),
                                    ),
                                  ]),
                              InkWell(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Name : ${item.name
                                          .toString()}",
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      "email : ${item.email
                                          .toString()}",
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),

                                  ],
                                ),
                                onTap: () {
                                  Get.to(ResumeForm());
                                },
                              ),
                            ],
                          ),
                        );
                      }),
                )),
          ),

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
