import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:util/auth_screens/sign_up/sign_up_account.dart';

import '../../screens/app_image/app_images.dart';
import '../../themes/app_colors.dart';
import '../../widgets/social_button.dart';

class SignUpTwoScreen extends StatelessWidget {
  const SignUpTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.bgPicOne), fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 10),
                      child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            size: 30,
                            color: Theme.of(context).primaryColor,
                          )),
                    ),
                    const Spacer(),
                    SizedBox(
                      height: 440,
                      width: 290.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                height: 187,
                                width: 140.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(AppImages.lights),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              Positioned(
                                left: 150.w,
                                child: Container(
                                  height: 243,
                                  width: 140.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(AppImages.shirtPic),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                height: 243,
                                width: 140.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(AppImages.tilesBearPic),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              Positioned(
                                left: 150.w,
                                top: 55,
                                child: Container(
                                  height: 187,
                                  width: 140.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            AppImages.electricalTools),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 35),
                      Text("Sign Up",
                          style: GoogleFonts.poiretOne(
                              fontSize: 40,
                              fontWeight: FontWeight.w400,
                              color: AppColors.textColor)),
                      const SizedBox(height: 20),
                      SocialButton(
                          onPressed: () {},
                          title: 'Continue with Facebook',
                          image: AppImages.fbIcon),
                      const SizedBox(height: 20),
                      SocialButton(
                          onPressed: () {},
                          title: 'Continue with Google',
                          image: AppImages.googleIcon),
                      const SizedBox(height: 20),
                      SocialButton(
                          onPressed: () {},
                          title: 'Continue with Apple',
                          image: AppImages.appleIcon),
                      const SizedBox(height: 5),
                      Center(
                        child: TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => const SignUpAccount()));
                            },
                            child: Text(
                              "Continue with Email",
                              style: GoogleFonts.openSans(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).primaryColor),
                            )),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
