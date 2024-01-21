import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/colors.dart';
import 'package:flutter_application_1/core/constants.dart';
import 'package:get/get.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    super.key,
    required this.labelText,
    required this.controller,
    required this.textInputType,
    required this.validator,
  });

  final String labelText;
  final TextEditingController controller;
  final TextInputType textInputType;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: kGetHeight * 0.02),
      child: SizedBox(
        height: Get.height * 0.07,
        child: TextFormField(
          keyboardType: textInputType,
          controller: controller,
          validator: validator,
          style: const TextStyle(fontSize: 15),
          decoration: InputDecoration(
            isDense: true,
            errorMaxLines: 1,
            errorText: null,
            errorStyle: const TextStyle(
              height: 0,
              fontSize: 0,
              color: Colors.transparent,
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 16,
            ),
            labelText: labelText,
            labelStyle: const TextStyle(
              color: kBlueGrey,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: const BorderSide(
                color: kAqua,
                width: 2.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: const BorderSide(
                color: kAqua,
                width: 2.0,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: const BorderSide(
                color: Colors.red,
                width: 2.0,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: const BorderSide(
                color: Colors.red,
                width: 2.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
