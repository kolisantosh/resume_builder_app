
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume_builder_app/model/resume_model.dart';

import '../controller/common_controller.dart';

class ResumeForm extends StatefulWidget {
  final ResumeModel? item;
  ResumeForm({this.item});
  @override
  _ResumeFormState createState() => _ResumeFormState();
}

class _ResumeFormState extends State<ResumeForm> {
  final commonController=Get.put(CommonController());

  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _email = '';
  String _phone = '';
  String _summary = '';
  String _experience = '';
  String _education = '';

  @override
  void initState() {
    setState(() {
      _name = '';
       _email = '';
       _phone = '';
       _summary = '';
       _experience = '';
       _education = '';
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resume Form'),
      ),
      body: Obx(()=>
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: ListView(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Name',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _name = value!;
                      },
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Email',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _email = value!;
                      },
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'Phone',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your phone number';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _phone = value!;
                      },
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Summary',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a summary of your skills and experience';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _summary = value!;
                      },
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Experience',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your work experience';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _experience = value!;
                      },
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Education',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your educational background';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _education = value!;
                      },
                    ),
                    const SizedBox(height: 16.0),
                    ElevatedButton(
                      child: const Text('Submit'),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          final data=ResumeModel(id: 1, name: _name, email: _email, phone: _phone,
                              summary: _summary, education: _education, experience: _experience);

                         if(widget.item?.id==null) {
                           commonController.addResume(data);
                         }
                         else {
                           commonController.updateResume(data);
                         }
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
            commonController.isDataProcessing.value?const Center(child: CircularProgressIndicator(),):Placeholder(),
          ],
        ),
      ),
    );
  }
}