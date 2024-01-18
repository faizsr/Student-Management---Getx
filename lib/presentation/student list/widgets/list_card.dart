import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/colors.dart';
import 'package:flutter_application_1/core/constants.dart';

class ListCardWidget extends StatelessWidget {
  const ListCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            blurRadius: 10,
            offset: Offset(0, 0),
            spreadRadius: 2,
            color: Color(0x0D000000),
          )
        ],
      ),
      width: kGetWidth,
      height: kGetHeight * 0.14,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Row(
          children: [
            const CircleAvatar(
              radius: 35,
            ),
            kWidth(kGetWidth * 0.03),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'James George',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text('Science'),
                Text('12'),
              ],
            ),
            const Spacer(),
            const Icon(CupertinoIcons.arrow_right)
          ],
        ),
      ),
    );
  }
}
