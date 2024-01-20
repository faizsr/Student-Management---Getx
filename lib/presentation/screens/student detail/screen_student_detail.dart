import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/colors.dart';
import 'package:flutter_application_1/core/constants.dart';
import 'package:flutter_application_1/data/model/student.dart';
import 'package:flutter_application_1/presentation/controllers/student_controller.dart';
import 'package:flutter_application_1/presentation/screens/student%20detail/widgets/custom_material_button.dart';
import 'package:flutter_application_1/presentation/screens/student%20detail/widgets/detail_section.dart';
import 'package:flutter_application_1/presentation/screens/student%20detail/widgets/profile_image_widget.dart';
import 'package:get/get.dart';

class ScreenStudentDetail extends StatelessWidget {
  ScreenStudentDetail({super.key});

  final StudentModel studentModel = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: Stack(
          children: [
            const DetailProfileImageWidget(),
            StudentDetailWidget(
              studentModel: studentModel,
            ),
          ],
        ),
        floatingActionButton: Padding(
          padding: EdgeInsets.zero,
          child: Container(
            color: kWhiteColor,
            padding: EdgeInsets.zero,
            width: kGetWidth,
            height: kGetHeight * 0.075,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomMaterialButton(
                  onTap: () {
                    
                  },
                  studentModel: studentModel,
                  text: 'Edit Profile',
                ),
                CustomMaterialButton(
                  onTap: () {
                    Get.find<StudentController>()
                        .deleteStudent(studentModel.id!);
                    Get.back();
                  },
                  studentModel: studentModel,
                  text: 'Remove Profile',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
