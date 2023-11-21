import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class EcoCredtisPricing extends StatelessWidget {
  final String LeadingText;
  final IconData icon;
  final Color iconColor;

  final String title;
  final String text;
  const EcoCredtisPricing(
      {Key? key,
      required this.LeadingText,
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
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Row(
            children: [
              Text(
                LeadingText,
                style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: const Color(0xff00213A)),
              ),
              const SizedBox(width: 10),
              Text(
                title,
                style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: const Color(0xff00213A)),
              ),
              const SizedBox(width: 10),
              Text(
                text,
                style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: const Color(0xff00213A)),
              ),
              const Spacer(),
              Icon(
                icon,
                color: iconColor,
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Divider(
          thickness: 1,
          color: const Color(0xff426C794D).withOpacity(0.30),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
