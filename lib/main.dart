import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/add%20student/screen_add_student.dart';
import 'package:flutter_application_1/presentation/screens/main%20screen/main_screen.dart';
import 'package:flutter_application_1/presentation/screens/student%20detail/screen_student_detail.dart';
import 'package:flutter_application_1/presentation/screens/student%20list/screen_student_list.dart';
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
      theme: ThemeData(fontFamily: 'NetflixSans'),
      home: const MainScreen(),
      getPages: [
        GetPage(
          name: '/screen_student_add',
          page: () => ScreenAddStudent(),
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
