import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../themes/app_colors.dart';

class CustomDescriptionFields extends StatelessWidget {
  final String hintText;
  const CustomDescriptionFields({super.key, required this.hintText});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.fieldsMainColor),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: TextField(
          style: const TextStyle(color: Colors.black),
          expands: true,
          maxLines: null,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: GoogleFonts.openSans(
              color: AppColors.fieldsMainColor,
              fontWeight: FontWeight.w400,
              fontSize: 15,
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
