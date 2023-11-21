import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../themes/app_colors.dart';

class CustomFields extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final onChanged;
  final Color? fillColor;

  final suffixIcon;
  final validator;

  final bool obscureText;
  final keyboardType;
  const CustomFields(
      {super.key,
      required this.hintText,
      this.keyboardType,
      this.validator,
      required this.controller,
      required this.obscureText,
      this.suffixIcon,
      this.onChanged,
      this.fillColor});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: obscureText,
      controller: controller,
      validator: validator,
      onChanged: onChanged,
      style: const TextStyle(color: Colors.black),
      keyboardType: keyboardType,
      decoration: InputDecoration(
          filled: true,
          fillColor: fillColor,
          errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xffB3261E), width: 2),
              borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xffF89554), width: 2),
              borderRadius: BorderRadius.circular(10)),
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: AppColors.fieldBorderColor, width: 1),
          ),
          hintText: hintText,
          hintStyle: GoogleFonts.openSans(
            color: AppColors.fieldsMainColor,
            fontWeight: FontWeight.w400,
            fontSize: 15,
          )),
    );
  }
}
