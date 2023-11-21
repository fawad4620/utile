import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../themes/app_colors.dart';

class CustomProductDetails extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  const CustomProductDetails(
      {Key? key,
      required this.image,
      required this.title,
      required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 190,
          width: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: GoogleFonts.openSans(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryColor),
        ),
        Text(
          subtitle,
          style: GoogleFonts.openSans(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: const Color(0xff4D6475)),
        ),
      ],
    );
  }
}
