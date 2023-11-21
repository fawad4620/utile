import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:util/screens/bottom_nav_bar/bottom_nav/app_bottom_nav.dart';
import 'package:util/themes/app_colors.dart';
import 'package:util/widgets/primary_button.dart';

import '../../screens/app_image/app_images.dart';
import '../../widgets/custom_progress_stepper.dart';
import '../widgets/app_bar.dart';

class CookiePolicy extends StatelessWidget {
  const CookiePolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar:
          // custom Progress Stepper
          const AuthScreenAppBar(
              child: CustomProgressStepper(
        borderColor: Colors.transparent,
        borderThreeColor: Colors.transparent,
        borderTwoColor: Colors.transparent,
        lineOneColor: Color(0xff00213A),
        stepperTwoColor: Color(0xff00213A),
        lineTwoColor: Color(0xff00213A),
        stepperThreeColor: Color(0xff00213A),
        lineThreeColor: Color(0xff00213A),
        stepperFourColor: Color(0xff00213A),
      )),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppImages.bgPicOne), fit: BoxFit.cover)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: SingleChildScrollView(
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Cookie Policy",
                        style: GoogleFonts.poiretOne(
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                            color: AppColors.textColor),
                      ),
                      const SizedBox(height: 10),
                      Wrap(
                        direction: Axis.horizontal,
                        children: [
                          Text(
                            "We may allow third-party partners to collect data about your device and your activity on our mobile app and website and use this data for the following purpose:",
                            style: GoogleFonts.openSans(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: AppColors.subTextColor),
                          ),
                        ],
                      ),
                      const SizedBox(height: 23),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.fiber_manual_record_rounded,
                                  size: 8,
                                  color: AppColors.subTextColor,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  "Provide personalized ads and content",
                                  style: GoogleFonts.openSans(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.subTextColor),
                                ),
                              ],
                            ),
                            const SizedBox(height: 17),
                            Row(
                              children: [
                                Icon(
                                  Icons.fiber_manual_record_rounded,
                                  size: 8,
                                  color: AppColors.subTextColor,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  "Conducting ads and content measurement",
                                  style: GoogleFonts.openSans(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.subTextColor),
                                ),
                              ],
                            ),
                            const SizedBox(height: 17),
                            Row(
                              children: [
                                Icon(
                                  Icons.fiber_manual_record_rounded,
                                  size: 8,
                                  color: AppColors.subTextColor,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  "Collecting audience insights",
                                  style: GoogleFonts.openSans(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.subTextColor),
                                ),
                              ],
                            ),
                            const SizedBox(height: 17),
                            Row(
                              children: [
                                Icon(
                                  Icons.fiber_manual_record_rounded,
                                  size: 8,
                                  color: AppColors.subTextColor,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  "Product Development",
                                  style: GoogleFonts.openSans(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.subTextColor),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Wrap(
                        spacing: 1,
                        runSpacing: 0,
                        direction: Axis.horizontal,
                        children: [
                          Text(
                            "Click ”I Accept” if you agree to the sharing of your",
                            style: GoogleFonts.openSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: AppColors.subTextColor),
                          ),
                          Row(
                            children: [
                              Text(
                                "data with these third parties.",
                                style: GoogleFonts.openSans(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: AppColors.subTextColor),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  "Cookie Policy",
                                  style: GoogleFonts.openSans(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.primaryColor),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 200),
                      PrimaryButton(
                        title: "I Accept",
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => const AppBottomNavBar()));
                        },
                      ),
                      const SizedBox(height: 20),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 1),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.transparent),
                          child: Center(
                            child: Text(
                              "Do Not Sell My Personal Information",
                              style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
