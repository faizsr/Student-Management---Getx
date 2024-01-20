import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/assets.dart';
import 'package:flutter_application_1/core/colors.dart';
import 'package:flutter_application_1/core/constants.dart';
import 'package:flutter_application_1/presentation/widgets/custom_search_field.dart';
import 'package:flutter_application_1/presentation/widgets/heading.dart';
import 'package:get/get.dart';

class CustomAppbarWidget extends StatelessWidget {
  const CustomAppbarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kDarkBlue,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () => Get.back(),
                  child: Container(
                    margin: const EdgeInsets.only(left: 10, right: 5),
                    width: 18,
                    child: Image.asset(
                      leftArrowIcon,
                      color: kWhiteColor,
                    ),
                  ),
                ),
                kWidth(kGetWidth * 0.05),
                const HeadingWidget(
                  text: 'List of Students',
                  textColor: kWhiteColor,
                ),
              ],
            ),
            kHeight(kGetHeight * 0.03),
            const CustomSearchFieldWidget()
          ],
        ),
      ),
    );
  }
}
