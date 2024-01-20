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
        body: Center(
          child: Stack(
            children: [
              const Positioned(
                top: 20,
                right: 20,
                child: CircleAvatar(
                  child: Icon(Icons.dark_mode_rounded),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    kHeight(kGetHeight * 0),
                    const Text(
                      'Manage Your Student \nDetails',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: kDarkBlue,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          management,
                          width: kGetWidth * 0.6,
                          color: kDarkBlue,
                        ),
                        _mainPageBtn(
                          btnText: 'Add New Student',
                          onPressed: () => Get.toNamed('/screen_student_add'),
                        ),
                        kHeight(kGetHeight * 0.04),
                        _mainPageBtn(
                          btnText: 'View All Students',
                          onPressed: () => Get.toNamed('/screen_student_list'),
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
      {required String btnText, required void Function()? onPressed}) {
    return MaterialButton(
      padding: const EdgeInsets.fromLTRB(100, 15, 100, 15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: kDarkBlue,
      textColor: kWhiteColor,
      onPressed: onPressed,
      child: Text(
        btnText,
        style: const TextStyle(fontSize: 15),
      ),
    );
  }
}
