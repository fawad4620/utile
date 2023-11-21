import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../themes/app_colors.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Privacy Policy',
                style: GoogleFonts.poiretOne(
                    color: AppColors.primaryColor,
                    fontSize: 30,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 30,
              ),
              Wrap(
                children: [
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur'
                    'adipiscing elit, sed do eiusmod tempor '
                    'incididunt ut labore et dolore magna aliqua.'
                    'Ut enim ad minim veniam, quis nostrud'
                    'exercitation ullamco laboris nisi ut aliquip'
                    'ex ea commodo consequat.',
                    style: GoogleFonts.openSans(
                      color: AppColors.primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Wrap(
                children: [
                  Text(
                    'Duis aute irure dolor in reprehenderit in'
                    'voluptate velit esse cillum dolore eu fugiat'
                    'nulla pariatur. Excepteur sint occaecat.'
                    'cupidatat non proident, sunt in culpa qui'
                    'officia deserunt mollit anim id est laborum.',
                    style: GoogleFonts.openSans(
                      color: AppColors.primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Wrap(
                children: [
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur'
                    'adipiscing elit, sed do eiusmod tempor'
                    'incididunt ut labore et dolore magna aliqua.',
                    style: GoogleFonts.openSans(
                      color: AppColors.primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Wrap(
                children: [
                  Text(
                    'Ut enim ad minim veniam, quis nostrud'
                    'exercitation ullamco laboris nisi ut aliquip'
                    'ex ea commodo consequat.',
                    style: GoogleFonts.openSans(
                      color: AppColors.primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Wrap(
                children: [
                  Text(
                    'Duis aute irure dolor in reprehenderit in'
                    'voluptate velit esse cillum dolore eu fugiat'
                    'nulla pariatur.',
                    style: GoogleFonts.openSans(
                      color: AppColors.primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Wrap(
                children: [
                  Text(
                    'Excepteur sint occaecat cupidatat non'
                    'proident, sunt in culpa qui officia deserunt'
                    'mollit anim id est laborum.',
                    style: GoogleFonts.openSans(
                      color: AppColors.primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Wrap(
                children: [
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur'
                    'adipiscing elit, sed do eiusmod tempor'
                    'incididunt ut labore et dolore magna aliqua.'
                    'Ut enim ad minim veniam,',
                    style: GoogleFonts.openSans(
                      color: AppColors.primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
