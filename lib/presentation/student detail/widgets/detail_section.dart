import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/colors.dart';
import 'package:flutter_application_1/core/constants.dart';
import 'package:flutter_application_1/presentation/student%20detail/widgets/info_widget.dart';
import 'package:flutter_application_1/presentation/student%20detail/widgets/main_title.dart';

class StudentDetailWidget extends StatelessWidget {
  const StudentDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.6,
      maxChildSize: 0.8,
      minChildSize: 0.6,
      builder: (context, scrollController) {
        return Container(
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            color: kWhiteColor,
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: SingleChildScrollView(
              controller: scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 4,
                      width: 30,
                      decoration: BoxDecoration(
                        color: kLightblack,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  kHeight(kGetHeight * 0.02),
                  const MainTitle(),
                  kHeight(kGetHeight * 0.03),
                  kDivider,
                  kHeight(kGetHeight * 0.02),
                  const InfoWidget(
                    heading: 'Personal information',
                    heading2: 'Other details',
                  ),
                  kHeight(kGetHeight * 0.05),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
