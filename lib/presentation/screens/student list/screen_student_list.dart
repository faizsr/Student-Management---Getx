import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants.dart';
import 'package:flutter_application_1/presentation/controllers/student_controller.dart';
import 'package:flutter_application_1/presentation/screens/student%20list/widgets/custom_appbar.dart';
import 'package:flutter_application_1/presentation/screens/student%20list/widgets/list_card.dart';
import 'package:get/get.dart';

class ScreenStudentList extends StatelessWidget {
  ScreenStudentList({super.key});

  final studentController = Get.put(StudentController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kGetHeight * 0.2),
          child: const CustomAppbarWidget(),
        ),
        body: Obx(
          () => Center(
            child: ListView.builder(
              padding: const EdgeInsets.only(bottom: 20),
              itemCount: studentController.allStudent.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () => Get.toNamed('/screen_student_detail',
                      arguments: index),
                  child: ListCardWidget(
                    studentModel: studentController.allStudent[index],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
