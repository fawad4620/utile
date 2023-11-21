import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../themes/app_colors.dart';

class ServiceAgreement extends StatelessWidget {
  const ServiceAgreement({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Service Agreement',
                style: GoogleFonts.poiretOne(
                    color: AppColors.primaryColor,
                    fontSize: 30,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur\n'
                'adipiscing elit, sed do eiusmod tempor \n'
                'incididunt ut labore et dolore magna aliqua.\n'
                'Ut enim ad minim veniam, quis nostrud\n'
                'exercitation ullamco laboris nisi ut aliquip\n'
                'ex ea commodo consequat.',
                style: GoogleFonts.openSans(
                  color: AppColors.primaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Duis aute irure dolor in reprehenderit in\n'
                'voluptate velit esse cillum dolore eu fugiat\n'
                'nulla pariatur. Excepteur sint occaecat.\n'
                'cupidatat non proident, sunt in culpa qui\n'
                'officia deserunt mollit anim id est laborum.',
                style: GoogleFonts.openSans(
                  color: AppColors.primaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur\n'
                'adipiscing elit, sed do eiusmod tempor\n'
                'incididunt ut labore et dolore magna aliqua.',
                style: GoogleFonts.openSans(
                  color: AppColors.primaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Ut enim ad minim veniam, quis nostrud\n'
                'exercitation ullamco laboris nisi ut aliquip\n'
                'ex ea commodo consequat.',
                style: GoogleFonts.openSans(
                  color: AppColors.primaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Duis aute irure dolor in reprehenderit in\n'
                'voluptate velit esse cillum dolore eu fugiat\n'
                'nulla pariatur.',
                style: GoogleFonts.openSans(
                  color: AppColors.primaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Excepteur sint occaecat cupidatat non\n'
                'proident, sunt in culpa qui officia deserunt\n'
                'mollit anim id est laborum.',
                style: GoogleFonts.openSans(
                  color: AppColors.primaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur\n'
                'adipiscing elit, sed do eiusmod tempor\n'
                'incididunt ut labore et dolore magna aliqua.\n'
                'Ut enim ad minim veniam,',
                style: GoogleFonts.openSans(
                  color: AppColors.primaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
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
