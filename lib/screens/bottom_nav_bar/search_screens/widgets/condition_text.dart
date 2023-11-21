import 'package:flutter/material.dart';

import '../../../../themes/app_colors.dart';

class ConditionText extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  const ConditionText(
      {super.key,
      required this.height,
      required this.width,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: const Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: AppColors.borderColor, width: 1)),
      child: Center(
          child: Text(
        text,
        style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColors.primaryColor),
      )),
    );
  }
}
