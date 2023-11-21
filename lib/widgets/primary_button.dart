import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final Function()? onPressed;
  final primary;
  const PrimaryButton(
      {super.key, this.onPressed, required this.title, this.primary});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: primary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        onPressed: onPressed,
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.openSans(
                fontWeight: FontWeight.w600,
                fontSize: 15,
                color: const Color(0xffFFFFFF)),
          ),
        ),
      ),
    );
  }
}
