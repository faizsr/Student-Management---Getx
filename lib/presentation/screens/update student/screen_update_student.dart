import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/colors.dart';
import 'package:flutter_application_1/core/constants.dart';
import 'package:flutter_application_1/data/model/student.dart';
import 'package:flutter_application_1/presentation/controllers/student_controller.dart';
import 'package:flutter_application_1/presentation/screens/add%20student/widgets/sections.dart';
import 'package:get/get.dart';

class ScreenUpdateStudent extends StatelessWidget {
  ScreenUpdateStudent({super.key});

  final studentController = Get.put(StudentController());
  final _formkey = GlobalKey<FormState>();

  static StudentModel studentModel = Get.arguments;

  final nameController = TextEditingController(text: studentModel.name);
  final dobController = TextEditingController(text: studentModel.dob);
  final genderController = TextEditingController(text: studentModel.gender);
  final phoneNumberController = TextEditingController(text: studentModel.phoneNumber);
  final emailController = TextEditingController(text: studentModel.emailAddress);
  final homeAddressController = TextEditingController(text:  studentModel.homeAddress);
  final departmentController = TextEditingController(text: studentModel.department);
  final admissonDateController = TextEditingController(text: studentModel.admissionDate);
  final rollNumberController = TextEditingController(text: studentModel.rollNumber);
  final studentClassController = TextEditingController(text: studentModel.studentClass);
  final studentIdController = TextEditingController(text: studentModel.studentId);

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
                headAndImageSection(text: 'Edit Student \nInfo?'),
                kHeight(kGetHeight * 0.04),
                personalInfoSection(
                  nameController: nameController,
                  dobController: dobController,
                  genderController: genderController,
                  phoneNumberController: phoneNumberController,
                  emailController: emailController,
                  homeAddressController: homeAddressController,
                ),
                kHeight(kGetHeight * 0.04),
                otherDetailSection(
                  departmentController: departmentController,
                  admissonDateController: admissonDateController,
                  rollNumberController: rollNumberController,
                  studentClassController: studentClassController,
                  studentIdController: studentIdController,
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
          // if (_formkey.currentState!.validate()) {
            studentController.updateStudent(StudentModel(
              id: studentModel.id,
              name: nameController.text,
              dob: dobController.text,
              gender: genderController.text,
              phoneNumber: phoneNumberController.text,
              emailAddress: emailController.text,
              homeAddress: homeAddressController.text,
              profile: '',
              department: departmentController.text,
              admissionDate: admissonDateController.text,
              studentId: studentIdController.text,
              rollNumber: rollNumberController.text,
              studentClass: studentClassController.text,
            ));
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
