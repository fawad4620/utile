import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../screens/app_image/app_images.dart';
import '../../themes/app_colors.dart';
import '../widgets/custom_fields.dart';

class ForgotPasswordTwo extends StatelessWidget {
  const ForgotPasswordTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leadingWidth: 70.w,
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back, color: Theme.of(context).primaryColor),
          ),
        ),
        body: Stack(fit: StackFit.expand, children: [
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
                          const SizedBox(height: 100),
                          Center(
                            child: SizedBox(
                              height: 232,
                              width: 255,
                              child: Image.asset(AppImages.forgotPasswordLogo),
                            ),
                          ),
                          const SizedBox(height: 100),
                          Text(
                            "Forgot Password",
                            style: GoogleFonts.poiretOne(
                                fontWeight: FontWeight.w400,
                                fontSize: 30,
                                color: AppColors.textColor),
                          ),
                          const SizedBox(height: 10),
                          Wrap(
                            direction: Axis.horizontal,
                            children: [
                              Text(
                                "Don't worry, it happens to the best of us.Enter the email address associated with your account.",
                                style: GoogleFonts.openSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.subTextColor),
                              )
                            ],
                          ),
                          const SizedBox(height: 30),
                          CustomFields(
                            fillColor: Colors.white,
                            obscureText: false,
                            controller: TextEditingController(),
                            hintText: '',
                          ),
                          const SizedBox(height: 20),
                          Wrap(
                            direction: Axis.horizontal,
                            children: [
                              Text(
                                "An email is sent with a link to update your password.",
                                style: GoogleFonts.openSans(
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.subTextColor),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )))
        ]));
  }
}
