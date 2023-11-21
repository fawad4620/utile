import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:util/auth_screens/verifications/cookie_policy.dart';

import '../../screens/app_image/app_images.dart';
import '../../themes/app_colors.dart';
import '../../widgets/custom_progress_stepper.dart';
import '../../widgets/primary_button.dart';
import '../widgets/app_bar.dart';
import '../widgets/custom_fields.dart';

class NumberCodeVerification extends StatefulWidget {
  const NumberCodeVerification({super.key});

  @override
  State<NumberCodeVerification> createState() => _NumberCodeVerificationState();
}

class _NumberCodeVerificationState extends State<NumberCodeVerification> {
  TextEditingController phoneController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  void submitForm() {
    if (_formKey.currentState!.validate()) {}
    ;
  }

  bool _allFieldsFilled = false;

  void _checkFields() {
    if (phoneController.text.isNotEmpty) {
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
          borderColor: Colors.transparent,
          borderThreeColor: Colors.grey,
          borderTwoColor: Colors.transparent,
          lineOneColor: Color(0xff00213A),
          stepperTwoColor: Color(0xff00213A),
          lineTwoColor: Color(0xff00213A),
          stepperThreeColor: Color(0xff00213A),
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
                      child: Form(
                        key: _formKey,
                        child: SafeArea(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 50.h),
                              Center(
                                child: Container(
                                  height: 249,
                                  width: 253,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage(AppImages.phoneLogo),
                                          fit: BoxFit.cover)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: Center(
                                      child: Image.asset(
                                        'images/Group6.png',
                                        scale: 3,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 70.h),
                              Text("Verify Phone Number",
                                  style: GoogleFonts.poiretOne(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.textColor)),
                              const SizedBox(height: 5),
                              Wrap(
                                direction: Axis.horizontal,
                                children: [
                                  Text(
                                      "Please enter the verification code that was sent to the following number:",
                                      style: GoogleFonts.openSans(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.subTextColor)),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "+44 125 2345 222",
                                style: GoogleFonts.openSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.primaryColor),
                              ),
                              const SizedBox(height: 20),
                              CustomFields(
                                  onChanged: (_) => _checkFields(),
                                  keyboardType: TextInputType.phone,
                                  fillColor: Colors.white,
                                  hintText: "Verification code",
                                  controller: phoneController,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Please enter verification code";
                                    }

                                    return null;
                                  },
                                  obscureText: false),
                              const SizedBox(height: 25),
                              PrimaryButton(
                                  primary: _allFieldsFilled
                                      ? AppColors.primaryColor
                                      : AppColors.secondaryColor,
                                  title: "Verify",
                                  onPressed: () {
                                    if (_formKey.currentState?.validate() ==
                                        true) {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (_) =>
                                                  const CookiePolicy()));
                                    }
                                  }),
                              Center(
                                  child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Don't receive the code? Resend",
                                  style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                      color: AppColors.primaryColor),
                                ),
                              )),
                              const SizedBox(height: 20),
                            ],
                          ),
                        ),
                      ),
                    )))
          ],
        ));
  }
}
