  import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/colors.dart';
import 'package:flutter_application_1/core/constants.dart';
import 'package:flutter_application_1/presentation/add%20student/widgets/sub_heading.dart';
import 'package:flutter_application_1/presentation/widgets/custom_text_field.dart';
import 'package:flutter_application_1/presentation/widgets/heading.dart';

Column otherDetailSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        subHeading('Other details:'),
        const CustomTextFieldWidget(
          labelText: 'Department',
        ),
        const CustomTextFieldWidget(
          labelText: 'Admission date',
        ),
        const CustomTextFieldWidget(
          labelText: 'Student ID',
        ),
        const CustomTextFieldWidget(
          labelText: 'Roll no.',
        ),
        const CustomTextFieldWidget(
          labelText: 'Class',
        ),
      ],
    );
  }

  Column personalInfoSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        subHeading('Personal information'),
        const CustomTextFieldWidget(
          labelText: 'Full name',
        ),
        const CustomTextFieldWidget(
          labelText: 'Date of Birth',
        ),
        const CustomTextFieldWidget(
          labelText: 'Gender',
        ),
        const CustomTextFieldWidget(
          labelText: 'Phone number',
        ),
        const CustomTextFieldWidget(
          labelText: 'Address',
        ),
      ],
    );
  }

  Row headAndImageSection() {
    return Row(
      children: [
        const HeadingWidget(
          text: 'Add New \nStudent Info?',
          textColor: kDarkBlue,
        ),
        const Spacer(),
        Column(
          children: [
            Container(
              width: kGetWidth * 0.38,
              height: kGetHeight * 0.18,
              decoration: BoxDecoration(
                color: kWhiteColor,
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(40),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 10,
                    offset: Offset(0, 6),
                    spreadRadius: 0,
                    color: Color(0x1A000000),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8),
              child: Text('Choose Profile'),
            )
          ],
        ),
      ],
    );
  }