import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/colors.dart';

ThemeData lighTheme = ThemeData(
  brightness: Brightness.light,
  fontFamily: 'NetflixSans',
  colorScheme: const ColorScheme.light(
    background: kWhiteColor,
    secondary: kAqua,
  ),
  primaryColor: kDarkBlue,
);
