import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:util/auth_screens/verifications/number_code_verification.dart';
import 'package:util/auth_screens/widgets/app_bar.dart';
import 'package:util/themes/app_colors.dart';

import '../../screens/app_image/app_images.dart';
import '../../widgets/custom_progress_stepper.dart';
import '../../widgets/primary_button.dart';

class EmailVerification extends StatelessWidget {
  const EmailVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar:
            // custom Progress Stepper
            const AuthScreenAppBar(
                child: CustomProgressStepper(
          borderColor: Colors.transparent,
          borderThreeColor: Colors.grey,
          borderTwoColor: Colors.grey,
          lineOneColor: Color(0xff00213A),
          stepperTwoColor: Color(0xff00213A),
          lineTwoColor: Colors.grey,
          stepperThreeColor: Colors.transparent,
          lineThreeColor: Colors.grey,
          stepperFourColor: Colors.transparent,
        )),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(AppImages.bgPicOne),
                        fit: BoxFit.cover)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: SingleChildScrollView(
                    child: SafeArea(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 100.h),
                          Center(
                            child: SizedBox(
                              height: 193.25,
                              width: 280.32,
                              child: Image.asset(AppImages.emailLogo),
                            ),
                          ),
                          SizedBox(height: 100.h),
                          Text("Verify Your Email",
                              style: GoogleFonts.poiretOne(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.textColor)),
                          const SizedBox(height: 10),
                          Wrap(
                            direction: Axis.horizontal,
                            children: [
                              Text(
                                  "Please verify your email by opening the link sent on the following email address:",
                                  style: GoogleFonts.openSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.subTextColor)),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Text("daniel.craig@gmail.com",
                              style: GoogleFonts.openSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primaryColor)),
                          const SizedBox(height: 30),
                          PrimaryButton(
                            title: "Next",
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) =>
                                      const NumberCodeVerification()));
                            },
                          ),
                          const SizedBox(height: 10),
                          Center(
                              child: TextButton(
                            onPressed: () {},
                            child: Text("Don't receive the email? Resend",
                                style: GoogleFonts.openSans(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primaryColor)),
                          )),
                        ],
                      ),
                    ),
                  ),
                ))
          ],
        ));
  }
}
