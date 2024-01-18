import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/add%20student/screen_add_student.dart';
import 'package:flutter_application_1/presentation/student%20detail/screen_student_detail.dart';
import 'package:flutter_application_1/presentation/student%20list/screen_student_list.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Student Management',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'NetflixSans'),
      home: const ScreenAddStudent(),
      getPages: [
        GetPage(
          name: '/screen_student_list',
          page: () => const ScreenStudentList(),
          transition: Transition.fade,
        ),
        GetPage(
          name: '/screen_student_detail',
          page: () => const ScreenStudentDetail(),
          transition: Transition.fade,
        )
      ],
    );
  }
}
