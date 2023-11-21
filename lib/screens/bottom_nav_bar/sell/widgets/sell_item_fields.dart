import 'package:flutter/material.dart';

import '../../../../themes/app_colors.dart';

class SellItemFields extends StatelessWidget {
  final TextEditingController controller;
  final onChanged;
  final String hintText;
  const SellItemFields(
      {super.key,
      this.onChanged,
      required this.hintText,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 56,
        width: double.infinity,
        decoration: BoxDecoration(
            color: const Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(10),
            border:
                Border.all(color: AppColors.textFieldBorderColor, width: 1)),
        child: Padding(
          padding: const EdgeInsets.only(top: 4, left: 10),
          child: TextField(
            controller: controller,
            style: TextStyle(color: AppColors.textFieldsMainColor),
            onChanged: onChanged,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: TextStyle(color: AppColors.textFieldsMainColor),
            ),
          ),
        ));
  }
}
