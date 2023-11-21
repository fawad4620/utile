import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:util/screens/bottom_nav_bar/profile/widgets/custom_accordion.dart';

import '../../../themes/app_colors.dart';

class QAndA extends StatelessWidget {
  const QAndA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        leadingWidth: 75.w,
        backgroundColor: AppColors.appbarColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: AppColors.primaryColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Text(
                'Q & A',
                style: GoogleFonts.poiretOne(
                  fontWeight: FontWeight.w400,
                  fontSize: 30,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomAccordion(
              title: 'What is Utile About?',
              subTile:
                  'Lorem ipsum dolor sit amet, consectetur adipisc ing elit, sed do eiusmod tempor incididunt ut lab ore et dolore magna aliqua. Ut enim ad minim ve quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
                  'Duis aute irure dolor in reprehenderit in voluptate'
                  'velit esse cillum dolore eu fugiat nulla pariatur.',
            ),
            const Divider(
              thickness: 1,
            ),
            const CustomAccordion(
              title: 'How to purchase an item?',
              subTile: '',
            ),
            const Divider(
              thickness: 1,
            ),
            const CustomAccordion(
              title: 'How to sell an item?',
              subTile: '',
            ),
            const Divider(
              thickness: 1,
            ),
            const CustomAccordion(
              title: 'Question 4?',
              subTile: '',
            ),
            const Divider(
              thickness: 1,
            ),
            const CustomAccordion(
              title: 'Question 5?',
              subTile: '',
            ),
            const Divider(
              thickness: 1,
            ),
            const CustomAccordion(
              title: 'Question 6?',
              subTile: '',
            ),
            const Divider(
              thickness: 1,
            ),
            const CustomAccordion(
              title: 'Question 7?',
              subTile: '',
            ),
            const Divider(
              thickness: 1,
            ),
            const CustomAccordion(
              title: 'Question 8?',
              subTile: '',
            ),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
