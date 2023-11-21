import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:util/auth_screens/password_forgot/forgot_password.dart';
import 'package:util/themes/app_colors.dart';

import '../../screens/app_image/app_images.dart';
import '../../screens/bottom_nav_bar/bottom_nav/app_bottom_nav.dart';
import '../../widgets/primary_button.dart';
import '../sign_up/sign_up_account.dart';
import '../widgets/custom_fields.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({
    super.key,
  });

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  void submitForm() {
    if (_formKey.currentState!.validate()) {}
    ;
  }

  bool _obscureText = true;
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(AppImages.bgPicOne))),
            child: SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 6),
                          child: IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: Icon(
                                Icons.arrow_back,
                                size: 25,
                                color: Theme.of(context).primaryColor,
                              )),
                        ),
                        const Spacer(),
                        Container(
                          height: 385,
                          width: 290,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    height: 158,
                                    width: 140,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(AppImages.woodPic),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  Positioned(
                                    left: 150,
                                    child: Container(
                                      height: 205,
                                      width: 140,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(AppImages.lights),
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
                                    height: 206,
                                    width: 140,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage(AppImages.chairsOne),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  Positioned(
                                    left: 150,
                                    top: 48,
                                    child: Container(
                                      height: 158,
                                      width: 140,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                AppImages.woodPanels),
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
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),
                            Text(
                              "Sign In",
                              style: GoogleFonts.poiretOne(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.textColor),
                            ),
                            const SizedBox(height: 20),
                            CustomFields(
                                fillColor: Colors.white,
                                obscureText: false,
                                controller: userNameController,
                                hintText: 'Username',
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Please enter username";
                                  }
                                }),
                            const SizedBox(height: 30),
                            CustomFields(
                              fillColor: Colors.white,
                              obscureText: _obscureText,
                              controller: passwordController,
                              hintText: 'Password',
                              suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(
                                      () {
                                        _obscureText = !_obscureText;
                                      },
                                    );
                                  },
                                  child: Icon(
                                      _obscureText
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      color: _obscureText
                                          ? AppColors.iconColor
                                          : AppColors.iconColor)),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter password';
                                }
                                return null;
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15, top: 8),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (_) => const ForgotPassword()));
                                },
                                child: Text(
                                  "Forgot Password?",
                                  style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: AppColors.myTextColor),
                                ),
                              ),
                            ),
                            const SizedBox(height: 25),
                            PrimaryButton(
                              onPressed: () {
                                if (_formKey.currentState?.validate() == true) {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (_) => const AppBottomNavBar()));
                                }
                              },
                              title: "Login",
                            ),
                            Center(
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (_) =>
                                                const SignUpAccount()));
                                  },
                                  child: Text(
                                    "Don’t Have an Account? Sign Up",
                                    style: GoogleFonts.openSans(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.primaryColor),
                                  )),
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
