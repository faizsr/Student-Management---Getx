import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/colors.dart';
import 'package:flutter_application_1/core/constants.dart';
import 'package:flutter_application_1/data/model/student.dart';
import 'package:flutter_application_1/presentation/controllers/image_picker_controller.dart';
import 'package:flutter_application_1/presentation/controllers/student_controller.dart';
import 'package:flutter_application_1/presentation/screens/add%20student/widgets/sections.dart';
import 'package:get/get.dart';

class ScreenUpdateStudent extends StatelessWidget {
  ScreenUpdateStudent({super.key});

  final studentController = Get.put(StudentController());
  final imagePickerController = Get.put(ImagePickerController());

  final _formkey = GlobalKey<FormState>();

  final nameController = TextEditingController(text: Get.arguments.name);
  final dobController = TextEditingController(text: Get.arguments.dob);
  final genderController = TextEditingController(text: Get.arguments.gender);
  final phoneNumberController =
      TextEditingController(text: Get.arguments.phoneNumber);
  final emailController =
      TextEditingController(text: Get.arguments.emailAddress);
  final homeAddressController =
      TextEditingController(text: Get.arguments.homeAddress);
  final departmentController =
      TextEditingController(text: Get.arguments.department);
  final admissonDateController =
      TextEditingController(text: Get.arguments.admissionDate);
  final rollNumberController =
      TextEditingController(text: Get.arguments.rollNumber);
  final studentClassController =
      TextEditingController(text: Get.arguments.studentClass);
  final studentIdController =
      TextEditingController(text: Get.arguments.studentId);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: ListView(
            children: [
              kHeight(kGetHeight * 0.04),
              Obx(
                () => headAndImageSection(
                  text: 'Edit Student \nInfo',
                  onTap: () {
                    imagePickerController.pickImageFromGallery();
                  },
                  image: imagePickerController.image.value.path == ''
                      ? Image.file(
                          File(Get.arguments.profile),
                        ).image
                      : Image.file(
                          imagePickerController.image.value,
                        ).image,
                ),
              ),
              kHeight(kGetHeight * 0.04),
              Form(
                key: _formkey,
                child: Column(
                  children: [
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
            ],
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
            studentController.updateStudent(StudentModel(
              id: Get.arguments.id,
              name: nameController.text,
              dob: dobController.text,
              gender: genderController.text,
              phoneNumber: phoneNumberController.text,
              emailAddress: emailController.text,
              homeAddress: homeAddressController.text,
              profile: imagePickerController.image.value.path,
              department: departmentController.text,
              admissionDate: admissonDateController.text,
              studentId: studentIdController.text,
              rollNumber: rollNumberController.text,
              studentClass: studentClassController.text,
            ));
          } else {
            kGetSnackbar('message');
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
