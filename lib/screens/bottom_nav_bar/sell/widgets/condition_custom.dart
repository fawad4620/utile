import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ConditionCustom extends StatelessWidget {
  final String leadingText;
  final IconData? icon;
  final Color iconColor;
  final String title;
  final String text;
  const ConditionCustom(
      {Key? key,
      required this.leadingText,
      required this.title,
      required this.text,
      required this.icon,
      required this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 27.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                leadingText,
                style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: const Color(0xff00213A)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: const Color(0xff00213A)),
                  ),
                  Icon(
                    icon,
                    color: iconColor,
                  ),
                ],
              ),
              Text(
                text,
                style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: const Color(0xff00213A)),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Divider(
          thickness: 1,
          color: const Color(0xff426C794D).withOpacity(0.30),
        ),
      ],
    );
  }
}
