import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormController extends GetxController {
  final formKey = GlobalKey<FormState>();

  validateName(String name) {
    if (name.isEmpty) {
      return '';
    }
    return 'error';
  }

  validateDob(String dob) {
    if (dob.isEmpty) {
      return 'error';
    }
    return '';
  }

  validateGender(String gender) {
    if (gender.isEmpty) {
      return 'error';
    }
    return '';
  }

  validatePhNumber(String phNumber) {
    if (phNumber.isEmpty) {
      return 'error';
    }
    return '';
  }

  validateEmail(String? email) {
    if (email!.isEmpty) {
      return 'error';
    }
    return '';
  }

  validateDepartment(String department) {
    if (department.isEmpty) {
      return 'error';
    }
    return '';
  }

  validateRollno(String rollNo) {
    if (rollNo.isEmpty) {
      return 'error';
    }
    return '';
  }

  validateClass(String stClass) {
    if (stClass.isEmpty) {
      return 'error';
    }
    return '';
  }

  Future onChecking() async {
    if (formKey.currentState!.validate()) {
      Get.snackbar('yes', 'Validated');
    } else {
      Get.snackbar('not', 'validddd');
    }
  }
}
