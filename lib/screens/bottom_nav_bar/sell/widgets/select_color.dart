import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectColor extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  const SelectColor(
      {Key? key,
      required this.title,
      required this.icon,
      required this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 30.w),
          child: Row(
            children: [
            
              Text(
                title,
                style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w400,
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
        const SizedBox(height: 15),
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
