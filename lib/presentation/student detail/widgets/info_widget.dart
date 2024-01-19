import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/colors.dart';
import 'package:flutter_application_1/core/constants.dart';
import 'package:flutter_application_1/presentation/add%20student/widgets/sub_heading.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({
    super.key,
    required this.heading,
    required this.heading2,
  });

  final String heading;
  final String heading2;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SubHeadingWidget(
          text: heading,
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: kDarkBlue,
        ),
        kHeight(kGetHeight * 0.01),
        _detailListTile(
          title: 'Date of Birth',
          trailing: '25-05-2005',
        ),
        _detailListTile(
          title: 'Gender',
          trailing: 'Male',
        ),
        _detailListTile(
          title: 'Phone number',
          trailing: '7902427009',
        ),
        _addressListTile(
          title: 'Email Address',
          subText: 'studentemail@gmail.com',
        ),
        _addressListTile(
          title: 'Home Address',
          subText: 'Suite Leffler Union \nKuvalisberg \nMA 18898',
        ),
        kHeight(kGetHeight * 0.03),
        SubHeadingWidget(
          text: heading2,
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: kDarkBlue,
        ),
        kHeight(kGetHeight * 0.01),
        _detailListTile(
          title: 'Admission Date',
          trailing: '25-05-2020',
        ),
        _detailListTile(
          title: 'Student Id',
          trailing: '827A9B',
        ),
        _detailListTile(
          title: 'Roll no.',
          trailing: '14',
        ),
        kHeight(kGetHeight * 0.04),
      ],
    );
  }

  Container _addressListTile({String? title, String? subText}) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      width: kGetWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFF6fffe9), width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SubHeadingWidget(
            text: title!,
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: kBlackColor,
          ),
          kHeight(kGetHeight * 0.01),
          Text(subText!),
        ],
      ),
    );
  }

  Container _detailListTile({String? title, String? trailing}) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
      width: kGetWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFF6fffe9), width: 2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SubHeadingWidget(
            text: title!,
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: kBlackColor,
          ),
          Text(trailing!),
        ],
      ),
    );
  }
}
