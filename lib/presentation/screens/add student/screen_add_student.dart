import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/assets.dart';
import 'package:flutter_application_1/core/colors.dart';
import 'package:flutter_application_1/core/constants.dart';
import 'package:flutter_application_1/data/model/student.dart';
import 'package:flutter_application_1/presentation/controllers/image_picker_controller.dart';
import 'package:flutter_application_1/presentation/controllers/student_controller.dart';
import 'package:flutter_application_1/presentation/screens/add%20student/widgets/sections.dart';
import 'package:get/get.dart';

class ScreenAddStudent extends StatelessWidget {
  ScreenAddStudent({super.key});

  final studentController = Get.put(StudentController());
  final imagePickerController = Get.put(ImagePickerController());
  final _formkey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final dobController = TextEditingController();
  final genderController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final emailController = TextEditingController();
  final homeAddressController = TextEditingController();
  final departmentController = TextEditingController();
  final admissonDateController = TextEditingController();
  final rollNumberController = TextEditingController();
  final studentClassController = TextEditingController();
  final studentIdController = TextEditingController();

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
                  text: 'Add New \nStudent Info?',
                  onTap: () {
                    imagePickerController.pickImageFromGallery();
                  },
                  image: imagePickerController.image.value.path == ''
                      ? Image.asset(
                          management,
                          color: kDarkBlue,
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
          // if (_formkey.currentState!.validate()) {
          studentController.addStudent(StudentModel(
            id: null,
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
          // } else {
          //   kGetSnackbar('All fields should be filled');
          // }
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
