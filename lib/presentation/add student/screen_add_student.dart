import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/colors.dart';
import 'package:flutter_application_1/core/constants.dart';
import 'package:flutter_application_1/presentation/add%20student/widgets/sections.dart';
import 'package:get/get.dart';

class ScreenAddStudent extends StatelessWidget {
  const ScreenAddStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: ListView(
            children: [
              kHeight(kGetHeight * 0.04),
              headAndImageSection(),
              kHeight(kGetHeight * 0.04),
              personalInfoSection(),
              kHeight(kGetHeight * 0.04),
              otherDetailSection(),
              kHeight(kGetHeight * 0.02),
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
          Get.toNamed('/screen_student_list');
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
