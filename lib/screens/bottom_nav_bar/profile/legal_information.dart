import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:util/screens/bottom_nav_bar/profile/service_agreement.dart';

import '../../../themes/app_colors.dart';

class LegalInformation extends StatelessWidget {
  const LegalInformation({super.key});

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
                'Legal Information',
                style: GoogleFonts.poiretOne(
                    color: AppColors.primaryColor,
                    fontSize: 30,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => const ServiceAgreement()));
                },
                child: Text(
                  'Service Agreement',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: AppColors.primaryColor,
                    decoration: TextDecoration.underline,
                    decorationThickness: 2,
                    decorationColor: AppColors.primaryColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Transaction Services Agreement for EU \n consumers',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: AppColors.primaryColor,
                    decoration: TextDecoration.underline,
                    decorationThickness: 2,
                    decorationColor: AppColors.primaryColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Free Membership Agreement',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: AppColors.primaryColor,
                    decoration: TextDecoration.underline,
                    decorationThickness: 2,
                    decorationColor: AppColors.primaryColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Terms of Use',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: AppColors.primaryColor,
                    decoration: TextDecoration.underline,
                    decorationThickness: 2,
                    decorationColor: AppColors.primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
