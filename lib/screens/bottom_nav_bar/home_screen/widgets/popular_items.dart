import 'package:flutter/material.dart';

import '../../../../themes/app_colors.dart';

class PopularItems extends StatelessWidget {
  final Function()? onPressed;
  final String image;
  final double? height;
  final double? width;
  final String titleText;
  final String subTitle;
  const PopularItems(
      {super.key,
      required this.image,
      required this.height,
      required this.width,
      required this.titleText,
      required this.subTitle,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: onPressed,
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(
                    image,
                  ),
                  fit: BoxFit.cover),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          titleText,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 17,
              color: AppColors.blackColor),
        ),
        const SizedBox(height: 3),
        Text(
          subTitle,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: AppColors.subtitleColor),
        ),
      ],
    );
  }
}
