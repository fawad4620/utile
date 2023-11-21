import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:util/auth_screens/widgets/app_bar.dart';
import 'package:util/auth_screens/widgets/custom_fields.dart';

import '../../screens/app_image/app_images.dart';
import '../../themes/app_colors.dart';
import '../../widgets/custom_progress_stepper.dart';
import '../../widgets/primary_button.dart';
import '../verifications/email_verification.dart';

class SignUpAccount extends StatefulWidget {
  const SignUpAccount({super.key});

  @override
  State<SignUpAccount> createState() => _SignUpAccountState();
}

class _SignUpAccountState extends State<SignUpAccount> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  void submitForm() {
    if (_formKey.currentState!.validate()) {}
    ;
  }

  bool isChecked = false;
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  bool _obscureText = true;
  bool obscurePassword = true;
  String? _ValidateEmail(value) {
    if (value!.isEmpty) {
      return "Please enter your email";
    }
    RegExp emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)[+\w-{2,4}$]');
    if (!emailRegExp.hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  bool _allFieldsFilled = false;

  void _checkFields() {
    if (passwordController.text.isNotEmpty &&
        nameController.text.isNotEmpty &&
        confirmPasswordController.text.isNotEmpty &&
        emailController.text.isNotEmpty &&
        numberController.text.isNotEmpty) {
      setState(() {
        _allFieldsFilled = true;
      });
    } else {
      setState(() {
        _allFieldsFilled = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar:
          // custom Progress Stepper
          const AuthScreenAppBar(
              child: CustomProgressStepper(
        borderColor: Colors.grey,
        borderThreeColor: Colors.grey,
        borderTwoColor: Colors.grey,
        lineOneColor: Colors.grey,
        stepperTwoColor: Colors.transparent,
        lineTwoColor: Colors.grey,
        stepperThreeColor: Colors.transparent,
        lineThreeColor: Colors.grey,
        stepperFourColor: Colors.transparent,
      )),
      body: Stack(fit: StackFit.expand, children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppImages.bgPicOne), fit: BoxFit.cover)),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: SafeArea(
                child: Column(
                  children: [
                    Form(
                      key: _formKey,
                      child: Container(
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Sign Up",
                                style: GoogleFonts.poiretOne(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.textColor),
                              ),
                              const SizedBox(height: 20),
                              CustomFields(
                                fillColor: Colors.white,
                                onChanged: (_) => _checkFields(),
                                obscureText: false,
                                controller: nameController,
                                hintText: 'Full Name',
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Please Enter Your Full Name";
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 35),
                              CustomFields(
                                  fillColor: Colors.white,
                                  onChanged: (_) => _checkFields(),
                                  keyboardType: TextInputType.phone,
                                  obscureText: false,
                                  controller: numberController,
                                  hintText: 'Phone Number',
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter your phone number';
                                    }
                                    if (value.length != 10) {
                                      return 'Please enter a 10-digit number';
                                    }
                                    return null;
                                  }),
                              const SizedBox(height: 35),
                              CustomFields(
                                  fillColor: Colors.white,
                                  onChanged: (_) => _checkFields(),
                                  obscureText: false,
                                  controller: emailController,
                                  hintText: 'Email',
                                  validator: _ValidateEmail),
                              const SizedBox(height: 35),
                              CustomFields(
                                fillColor: Colors.white,
                                onChanged: (_) => _checkFields(),
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
                                            ? const Color(0xff426C79)
                                            : const Color(0xff426C79))),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter password';
                                  }
                                  if (value.length < 6) {
                                    return 'Week password enter strong password';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 35),
                              CustomFields(
                                  fillColor: Colors.white,
                                  onChanged: (_) => _checkFields(),
                                  obscureText: obscurePassword,
                                  controller: confirmPasswordController,
                                  hintText: 'Confirm Password',
                                  suffixIcon: GestureDetector(
                                      onTap: () {
                                        setState(
                                          () {
                                            obscurePassword = !obscurePassword;
                                          },
                                        );
                                      },
                                      child: Icon(
                                          obscurePassword
                                              ? Icons.visibility_outlined
                                              : Icons.visibility_off_outlined,
                                          color: obscurePassword
                                              ? const Color(0xff246c79)
                                              : const Color(0xff246c79))),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter confirm password';
                                    }

                                    return null;
                                  }),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 18,
                          width: 18,
                          child: Checkbox(
                              activeColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(2)),
                              side: const BorderSide(
                                  color: Colors.black, width: 2),
                              value: isChecked,
                              onChanged: (v) {
                                setState(() {
                                  isChecked = v!;
                                });
                              }),
                        ),
                        const SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "By clicking sign up, I hereby agree and consent",
                              style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.20,
                                  color: AppColors.myTextColor),
                            ),
                            Row(
                              children: [
                                Text(
                                  "to our ",
                                  style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.50,
                                      color: AppColors.myTextColor),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Text(
                                    "Terms & Conditions",
                                    style: GoogleFonts.openSans(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: AppColors.myTextColor),
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  "and",
                                  style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                      color: AppColors.myTextColor),
                                ),
                                const SizedBox(width: 5),
                                InkWell(
                                  onTap: () {},
                                  child: Text(
                                    "Pro terms",
                                    style: GoogleFonts.openSans(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 13,
                                        color: AppColors.myTextColor),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Sale:",
                                  style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13,
                                      color: AppColors.myTextColor),
                                ),
                                Text(
                                  " I confirm that I have read our",
                                  style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                      color: AppColors.myTextColor),
                                ),
                                Text(
                                  " Privacy",
                                  style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13,
                                      color: AppColors.myTextColor),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Policy: ",
                                  style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13,
                                      color: AppColors.myTextColor),
                                ),
                                Text(
                                  " and I certify that I am 18 years old",
                                  style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                      color: AppColors.myTextColor),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 40),
                    PrimaryButton(
                        primary: _allFieldsFilled
                            ? AppColors.primaryColor
                            : AppColors.secondaryColor,
                        title: "Sign Up",
                        onPressed: () {
                          if (_formKey.currentState?.validate() == true) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => const EmailVerification()));
                          } else {
                            Fluttertoast.showToast(
                                msg: "Please fill all fields");
                          }
                        }),
                    const SizedBox(height: 30)
                  ],
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
