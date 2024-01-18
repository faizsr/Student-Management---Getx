import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/assets.dart';
import 'package:flutter_application_1/core/constants.dart';

class CustomSearchFieldWidget extends StatelessWidget {
  const CustomSearchFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kGetHeight * 0.07,
      child: CupertinoSearchTextField(
        backgroundColor: Colors.white10.withOpacity(0.06),
        borderRadius: BorderRadius.circular(15),
        prefixInsets: EdgeInsetsDirectional.zero,
        suffixInsets: const EdgeInsetsDirectional.only(end: 10),
        prefixIcon: Container(
          margin: const EdgeInsets.only(left: 10, right: 5),
          width: 22,
          child: Image.asset(
            searchIcon,
            color: const Color(0xFF737373),
          ),
        ),
        suffixIcon: const Icon(
          CupertinoIcons.xmark_circle_fill,
          color: Color(0xFF737373),
        ),
        style: const TextStyle(
            color: Color(0xFFE6E6E6),
            letterSpacing: 0.3,
            fontSize: 16),
      ),
    );
  }
}
