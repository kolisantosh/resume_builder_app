
import 'package:flutter/material.dart';

class ResumeForm extends StatefulWidget {
  @override
  _ResumeFormState createState() => _ResumeFormState();
}

class _ResumeFormState extends State<ResumeForm> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _email = '';
  String _phone = '';
  String _summary = '';
  String _experience = '';
  String _education = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resume Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                decoration: InputDecoration(
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
                decoration: InputDecoration(
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
                decoration: InputDecoration(
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
                decoration: InputDecoration(
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
                decoration: InputDecoration(
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
                decoration: InputDecoration(
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
              SizedBox(height: 16.0),
              ElevatedButton(
                child: Text('Submit'),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}