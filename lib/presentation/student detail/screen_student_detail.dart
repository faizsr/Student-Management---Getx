import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants.dart';
import 'package:flutter_application_1/presentation/student%20detail/widgets/custom_material_button.dart';
import 'package:flutter_application_1/presentation/student%20detail/widgets/detail_section.dart';
import 'package:flutter_application_1/presentation/student%20detail/widgets/profile_image_widget.dart';

class ScreenStudentDetail extends StatelessWidget {
  const ScreenStudentDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: const Stack(
          children: [
            DetailProfileImageWidget(),
            StudentDetailWidget(),
          ],
        ),
        floatingActionButton: Padding(
          padding: EdgeInsets.zero,
          child: Container(
            padding: EdgeInsets.zero,
            width: kGetWidth,
            height: kGetHeight * 0.075,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomMaterialButton(
                  text: 'Edit Profile',
                ),
                CustomMaterialButton(
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
