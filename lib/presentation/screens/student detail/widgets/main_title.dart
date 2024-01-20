import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/colors.dart';
import 'package:flutter_application_1/core/constants.dart';

class MainTitle extends StatelessWidget {
  const MainTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'James George',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'Department: Science',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
        const Spacer(),
        Container(
          width: kGetWidth * 0.15,
          height: kGetHeight * 0.07,
          decoration: BoxDecoration(
            color: kDarkBlue,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Class',
                style: TextStyle(
                  color: kWhiteColor,
                  fontSize: 12,
                  height: 1.2,
                ),
              ),
              Text(
                '10',
                style: TextStyle(
                  height: 1.2,
                  fontSize: 22,
                  color: kWhiteColor,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
