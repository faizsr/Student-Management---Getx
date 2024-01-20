import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/colors.dart';
import 'package:flutter_application_1/core/constants.dart';
import 'package:flutter_application_1/data/model/student.dart';
import 'package:flutter_application_1/presentation/controllers/form_controller.dart';
import 'package:flutter_application_1/presentation/controllers/student_controller.dart';
import 'package:flutter_application_1/presentation/screens/add%20student/widgets/sections.dart';
import 'package:get/get.dart';

class ScreenAddStudent extends StatelessWidget {
  ScreenAddStudent({super.key});

  final studentController = Get.put(StudentController());
  final FormController formController = Get.put(FormController());
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Form(
            key: _formkey,
            child: ListView(
              children: [
                kHeight(kGetHeight * 0.04),
                headAndImageSection(),
                kHeight(kGetHeight * 0.04),
                personalInfoSection(
                  nameController: formController.nameController,
                  dobController: formController.dobController,
                  genderController: formController.genderController,
                  phoneNumberController: formController.phoneNumberController,
                  emailController: formController.emailController,
                  homeAddressController: formController.homeAddressController,
                ),
                kHeight(kGetHeight * 0.04),
                otherDetailSection(
                  departmentController: formController.departmentController,
                  admissonDateController: formController.admissonDateController,
                  rollNumberController: formController.rollNumberController,
                  studentClassController: formController.studentClassController,
                  studentIdController: formController.studentIdController,
                ),
                kHeight(kGetHeight * 0.02),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: MaterialButton(
        minWidth: kGetWidth * 0.25,
        height: kGetHeight * 0.07,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: kDarkBlue,
        onPressed: () {
          if (_formkey.currentState!.validate()) {
            studentController.addStudent(StudentModel(
              id: null,
              name: formController.nameController.text,
              dob: formController.dobController.text,
              gender: formController.genderController.text,
              phoneNumber: formController.phoneNumberController.text,
              emailAddress: formController.emailController.text,
              homeAddress: formController.homeAddressController.text,
              profile: '',
              department: formController.departmentController.text,
              admissionDate: formController.admissonDateController.text,
              studentId: formController.studentIdController.text,
              rollNumber: formController.rollNumberController.text,
              studentClass: formController.studentClassController.text,
            ));
          } else {
            kGetSnackbar('All fields should be filled');
          }
        },
        child: const Text(
          'Create',
          style: TextStyle(
            color: kWhiteColor,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
