import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:util/auth_screens/sign_in/sign_in_screen.dart';
import 'package:util/auth_screens/sign_up/sign_up_two.dart';

import '../../screens/app_image/app_images.dart';
import '../../themes/app_colors.dart';
import '../../widgets/primary_button.dart';

class SignUpOptionScreen extends StatefulWidget {
  const SignUpOptionScreen({super.key});

  @override
  State<SignUpOptionScreen> createState() => _SignUpOptionScreenState();
}

class _SignUpOptionScreenState extends State<SignUpOptionScreen> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppImages.bgPicOne), fit: BoxFit.cover)),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 60),
                  SizedBox(
                    height: 483,
                    width: 335.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              height: 200,
                              width: 145.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(AppImages.bricksPic),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Positioned(
                              left: 155.w,
                              child: Container(
                                height: 260,
                                width: 145.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(AppImages.chairPic),
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
                              height: 260,
                              width: 145.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(AppImages.chairPic),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Positioned(
                              left: 155.w,
                              top: 52.h,
                              child: Container(
                                height: 200,
                                width: 145.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(AppImages.tilesBearPic),
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
                  const SizedBox(height: 15),
                  Text("Find a new home\nfor your things!",
                      style: GoogleFonts.poiretOne(
                          fontSize: 40,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textColor)),
                  const SizedBox(height: 20),
                  PrimaryButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => const SignUpTwoScreen()));
                    },
                    title: 'Sign Up',
                  ),
                  const SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => const SignInScreen()));
                    },
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            width: 1.20, color: Theme.of(context).primaryColor),
                      ),
                      child: Center(
                        child: Text(
                          "Already Have an Account ? Sign In",
                          style: GoogleFonts.openSans(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Theme.of(context).primaryColor),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20)
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
