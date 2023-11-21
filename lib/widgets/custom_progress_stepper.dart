import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class CustomProgressStepper extends StatelessWidget {
  final Color stepperTwoColor;
  final Color stepperThreeColor;
  final Color stepperFourColor;
  final Color lineOneColor;
  final Color lineTwoColor;
  final Color borderColor;
  final Color borderTwoColor;
  final Color borderThreeColor;
  final Color lineThreeColor;
  const CustomProgressStepper(
      {super.key,
      required this.lineOneColor,
      required this.stepperTwoColor,
      required this.lineTwoColor,
      required this.stepperThreeColor,
      required this.lineThreeColor,
      required this.stepperFourColor,
      required this.borderColor,
      required this.borderTwoColor,
      required this.borderThreeColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 13,
          width: 13,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.primaryColor,
          ),
        ),
        Container(
          height: 1,
          width: 37,
          color: lineOneColor,
        ),
        Container(
          height: 13,
          width: 13,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: borderColor),
            color: stepperTwoColor,
          ),
        ),
        Container(
          height: 1,
          width: 37,
          color: lineTwoColor,
        ),
        Container(
          height: 13,
          width: 13,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: stepperThreeColor,
              border: Border.all(color: borderTwoColor)),
        ),
        Container(
          height: 1,
          width: 37,
          color: lineThreeColor,
        ),
        Container(
          height: 13,
          width: 13,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: stepperFourColor,
              border: Border.all(color: borderThreeColor)),
        ),
      ],
    );
  }
}
