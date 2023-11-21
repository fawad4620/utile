import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';

import '../../../../themes/app_colors.dart';

class CustomAccordion extends StatelessWidget {
  final String title;
  final String subTile;

  const CustomAccordion({
    super.key,
    required this.title,
    required this.subTile,
  });

  @override
  Widget build(BuildContext context) {
    return GFAccordion(
      margin: EdgeInsets.symmetric(horizontal: 22.w),
      expandedTitleBackgroundColor: Colors.white,
      title: title,
      textStyle: TextStyle(
        color: AppColors.primaryColor,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      contentChild: Wrap(
        crossAxisAlignment: WrapCrossAlignment.start,
        direction: Axis.horizontal,
        children: [
          Text(
            subTile,
            style: const TextStyle(color: Colors.black),
          ),
        ],
      ),
      collapsedIcon: const Icon(
        Icons.remove,
        size: 30,
        color: Color(0xffED7B30),
      ),
      expandedIcon: const Icon(
        Icons.add,
        size: 30,
        color: Color(0xffED7B30),
      ),
    );
  }
}
