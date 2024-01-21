import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/colors.dart';
import 'package:flutter_application_1/core/constants.dart';
import 'package:flutter_application_1/data/model/student.dart';
import 'package:flutter_application_1/presentation/controllers/image_picker_controller.dart';
import 'package:flutter_application_1/presentation/controllers/student_controller.dart';
import 'package:get/get.dart';

class CustomAddButton extends StatelessWidget {
  CustomAddButton({
    super.key,
    required this.nameController,
    required this.dobController,
    required this.genderController,
    required this.phoneNumberController,
    required this.emailController,
    required this.homeAddressController,
    required this.departmentController,
    required this.admissonDateController,
    required this.studentIdController,
    required this.rollNumberController,
    required this.studentClassController,
    required this.formkey1,
    required this.formkey2,
  });

  final TextEditingController nameController;
  final TextEditingController dobController;
  final TextEditingController genderController;
  final TextEditingController phoneNumberController;
  final TextEditingController emailController;
  final TextEditingController homeAddressController;
  final TextEditingController departmentController;
  final TextEditingController admissonDateController;
  final TextEditingController studentIdController;
  final TextEditingController rollNumberController;
  final TextEditingController studentClassController;
  final GlobalKey<FormState> formkey1;
  final GlobalKey<FormState> formkey2;

  final imagePickerController = Get.put(ImagePickerController());
  final studentController = Get.put(StudentController());

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: kGetWidth * 0.25,
      height: kGetHeight * 0.07,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: kDarkBlue,
      onPressed: () {
        if (formkey1.currentState!.validate()) {
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
          Get.back();
          kGetSnackbar('New student details added');
        } else {
          kGetSnackbar('Must select an image');
        }
      },
      child: const Text(
        'Create',
        style: TextStyle(
          color: kWhiteColor,
          fontSize: 15,
        ),
      ),
    );
  }
}
