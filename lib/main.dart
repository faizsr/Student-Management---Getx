import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/themes/dark_theme.dart';
import 'package:flutter_application_1/core/themes/light_theme.dart';
import 'package:flutter_application_1/presentation/screens/add%20student/screen_add_student.dart';
import 'package:flutter_application_1/presentation/screens/main%20screen/main_screen.dart';
import 'package:flutter_application_1/presentation/screens/student%20detail/screen_student_detail.dart';
import 'package:flutter_application_1/presentation/screens/student%20list/screen_student_list.dart';
import 'package:flutter_application_1/presentation/screens/update%20student/screen_update_student.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Student Management',
      debugShowCheckedModeBanner: false,
      theme: lighTheme,
      darkTheme: darkTheme,
      home: const MainScreen(),
      getPages: [
        GetPage(
          name: '/screen_student_add',
          page: () => ScreenAddStudent(),
          transition: Transition.fade,
        ),
        GetPage(
          name: '/screen_student_update',
          page: () => ScreenUpdateStudent(),
          transition: Transition.fade,
        ),
        GetPage(
          name: '/screen_student_list',
          page: () => ScreenStudentList(),
          transition: Transition.fade,
        ),
        GetPage(
          name: '/screen_student_detail',
          page: () => ScreenStudentDetail(),
          transition: Transition.fade,
        )
      ],
    );
  }
}
