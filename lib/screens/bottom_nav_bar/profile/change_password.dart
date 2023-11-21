import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:util/screens/bottom_nav_bar/profile/password_updated.dart';

import '../../../auth_screens/widgets/custom_fields.dart';
import '../../../widgets/primary_button.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool obscurePassword = true;
  bool obscureText = true;
  bool obscureNew = true;

  TextEditingController currentPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController confirmNewPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/bgOne.jpg'), fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15.w),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        height: 241,
                        width: 280,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage("images/changePasswordLogo.png"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Change Password",
                      style: GoogleFonts.poiretOne(
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff00213A)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Please enter your new password",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff4D6475)),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: CustomFields(
                        fillColor: Colors.white,
                        obscureText: obscurePassword,
                        controller: currentPasswordController,
                        hintText: 'Current Password',
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
                                    ? const Color(0xff426C79)
                                    : const Color(0xff246c79))),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: CustomFields(
                        fillColor: Colors.white,
                        obscureText: obscureText,
                        controller: confirmPasswordController,
                        hintText: 'New Password',
                        suffixIcon: GestureDetector(
                            onTap: () {
                              setState(
                                () {
                                  obscureText = !obscureText;
                                },
                              );
                            },
                            child: Icon(
                                obscureText
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color: obscurePassword
                                    ? const Color(0xff426C79)
                                    : const Color(0xff246c79))),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: CustomFields(
                        fillColor: Colors.white,
                        obscureText: obscureNew,
                        controller: confirmNewPasswordController,
                        hintText: 'Confirm New Password',
                        suffixIcon: GestureDetector(
                            onTap: () {
                              setState(
                                () {
                                  obscureNew = !obscureNew;
                                },
                              );
                            },
                            child: Icon(
                                obscureNew
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color: obscurePassword
                                    ? const Color(0xff426C79)
                                    : const Color(0xff246c79))),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    PrimaryButton(
                      title: 'Submit',
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => const PasswordUpdated()));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
