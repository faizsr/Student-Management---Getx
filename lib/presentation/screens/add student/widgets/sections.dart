import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/assets.dart';
import 'package:flutter_application_1/core/colors.dart';
import 'package:flutter_application_1/core/constants.dart';
import 'package:flutter_application_1/presentation/screens/add%20student/widgets/sub_heading.dart';
import 'package:flutter_application_1/presentation/widgets/custom_text_field.dart';
import 'package:flutter_application_1/presentation/widgets/heading.dart';
import 'package:get/get.dart';

Column otherDetailSection({
  required TextEditingController departmentController,
  required TextEditingController admissonDateController,
  required TextEditingController studentIdController,
  required TextEditingController rollNumberController,
  required TextEditingController studentClassController,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SubHeadingWidget(
        text: 'Other details:',
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: kBlackColor,
      ),
      CustomTextFieldWidget(
        textInputType: TextInputType.text,
        controller: departmentController,
        labelText: 'Department',
        validator: (value) {
          if (value!.isEmpty) {
            return '';
          }
          return '';
        },
      ),
      CustomTextFieldWidget(
        textInputType: TextInputType.datetime,
        controller: admissonDateController,
        labelText: 'Admission date',
        validator: (value) {
          if (value!.isEmpty) {
            return '';
          }
          return '';
        },
      ),
      CustomTextFieldWidget(
        textInputType: TextInputType.text,
        controller: studentIdController,
        labelText: 'Student ID',
        validator: (value) {
          if (value!.isEmpty) {
            return '';
          }
          return '';
        },
      ),
      CustomTextFieldWidget(
        textInputType: TextInputType.number,
        controller: rollNumberController,
        labelText: 'Roll no.',
        validator: (value) {
          if (value!.isEmpty) {
            return '';
          }
          return '';
        },
      ),
      CustomTextFieldWidget(
        textInputType: TextInputType.number,
        controller: studentClassController,
        labelText: 'Class',
        validator: (value) {
          if (value!.isEmpty) {
            return '';
          }
          return '';
        },
      ),
    ],
  );
}

Column personalInfoSection({
  required TextEditingController nameController,
  required TextEditingController dobController,
  required TextEditingController genderController,
  required TextEditingController phoneNumberController,
  required TextEditingController emailController,
  required TextEditingController homeAddressController,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SubHeadingWidget(
        text: 'Personal information',
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: kBlackColor,
      ),
      CustomTextFieldWidget(
        textInputType: TextInputType.text,
        controller: nameController,
        labelText: 'Full name',
        validator: (value) {
          if (value!.isEmpty) {
            return '';
          }
          return '';
        },
      ),
      CustomTextFieldWidget(
        textInputType: TextInputType.datetime,
        controller: dobController,
        labelText: 'Date of Birth',
        validator: (value) {
          if (value!.isEmpty) {
            return '';
          }
          return '';
        },
      ),
      CustomTextFieldWidget(
        textInputType: TextInputType.text,
        controller: genderController,
        labelText: 'Gender',
        validator: (value) {
          if (value!.isEmpty) {
            return '';
          }
          return '';
        },
      ),
      CustomTextFieldWidget(
        textInputType: TextInputType.phone,
        controller: phoneNumberController,
        labelText: 'Phone number',
        validator: (value) {
          if (value!.isEmpty) {
            return '';
          }
          return '';
        },
      ),
      CustomTextFieldWidget(
        textInputType: TextInputType.emailAddress,
        controller: emailController,
        labelText: 'Email Address',
        validator: (value) {
          if (value!.isEmpty) {
            return '';
          }
          return '';
        },
      ),
      CustomTextFieldWidget(
        textInputType: TextInputType.streetAddress,
        controller: homeAddressController,
        labelText: 'Home Address',
        validator: (value) {
          if (value!.isEmpty) {
            return '';
          }
          return '';
        },
      ),
    ],
  );
}

Row headAndImageSection(
    {required String text,
    required void Function()? onTap,
    required ImageProvider<Object> image}) {
  print(image);
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              Get.back();
            },
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              width: 18,
              child: Image.asset(
                leftArrowIcon,
                color: kBlackColor,
              ),
            ),
          ),
          kHeight(kGetHeight * 0.05),
          HeadingWidget(
            text: text,
            textColor: kDarkBlue,
          ),
        ],
      ),
      const Spacer(),
      Column(
        children: [
          InkWell(
            onTap: onTap,
            child: Container(
              width: kGetWidth * 0.38,
              height: kGetHeight * 0.18,
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(image: image, fit: BoxFit.cover),
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
