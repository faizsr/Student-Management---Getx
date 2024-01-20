import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/assets.dart';
import 'package:flutter_application_1/core/colors.dart';
import 'package:flutter_application_1/core/constants.dart';
import 'package:get/get.dart';

class DetailProfileImageWidget extends StatelessWidget {
  const DetailProfileImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: kGetHeight * 0.42,
          decoration: const BoxDecoration(
            color: kDarkBlue,
            image: DecorationImage(
              image: NetworkImage(
                  'https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 20,
          left: 20,
          child: InkWell(
            onTap: () => Get.back(),
            child: Material(
              color: kDarkBlue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Container(
                margin: const EdgeInsets.only(
                  right: 12,
                  left: 10,
                  top: 10,
                  bottom: 10,
                ),
                width: kGetWidth * 0.04,
                child: Image.asset(
                  leftArrowIcon,
                  color: kWhiteColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
