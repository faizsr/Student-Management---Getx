import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/assets.dart';
import 'package:flutter_application_1/core/colors.dart';
import 'package:flutter_application_1/core/constants.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Center(
          child: Stack(
            children: [
              Positioned(
                top: 20,
                right: 20,
                child: InkWell(
                  onTap: () {
                    Get.changeThemeMode(
                        Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
                  },
                  child: const CircleAvatar(
                    backgroundColor: kAqua,
                    child: Icon(Icons.dark_mode_rounded,color: kDarkBlue,),
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    kHeight(kGetHeight * 0),
                    Text(
                      'Manage Your Student \nDetails',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).primaryColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          management,
                          width: kGetWidth * 0.6,
                          color: Theme.of(context).primaryColor,
                        ),
                        _mainPageBtn(
                          btnText: 'Add New Student',
                          onPressed: () => Get.toNamed('/screen_student_add'),
                          context: context,
                        ),
                        kHeight(kGetHeight * 0.04),
                        _mainPageBtn(
                          btnText: 'View All Students',
                          onPressed: () => Get.toNamed('/screen_student_list'),
                          context: context,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  MaterialButton _mainPageBtn(
      {required String btnText, required void Function()? onPressed, required BuildContext context}) {
    return MaterialButton(
      padding: const EdgeInsets.fromLTRB(100, 15, 100, 15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Theme.of(context).primaryColor,
      textColor: Theme.of(context).colorScheme.secondary,
      onPressed: onPressed,
      child: Text(
        btnText,
        style: const TextStyle(fontSize: 15),
      ),
    );
  }
}
