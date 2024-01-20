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
        controller: departmentController,
        labelText: 'Department',
      ),
      CustomTextFieldWidget(
        controller: admissonDateController,
        labelText: 'Admission date',
      ),
      CustomTextFieldWidget(
        controller: studentIdController,
        labelText: 'Student ID',
      ),
      CustomTextFieldWidget(
        controller: rollNumberController,
        labelText: 'Roll no.',
      ),
      CustomTextFieldWidget(
        controller: studentClassController,
        labelText: 'Class',
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
        controller: nameController,
        labelText: 'Full name',
      ),
      CustomTextFieldWidget(
        controller: dobController,
        labelText: 'Date of Birth',
      ),
      CustomTextFieldWidget(
        controller: genderController,
        labelText: 'Gender',
      ),
      CustomTextFieldWidget(
        controller: phoneNumberController,
        labelText: 'Phone number',
      ),
      CustomTextFieldWidget(
        controller: emailController,
        labelText: 'Email Address',
      ),
      CustomTextFieldWidget(
        controller: homeAddressController,
        labelText: 'Home Address',
      ),
    ],
  );
}

Row headAndImageSection() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              // Get.changeTheme(
              //     Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
              Get.toNamed('/screen_student_list');
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
          const HeadingWidget(
            text: 'Add New \nStudent Info?',
            textColor: kDarkBlue,
          ),
        ],
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
