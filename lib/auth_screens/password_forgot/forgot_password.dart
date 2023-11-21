import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:util/themes/app_colors.dart';
import 'package:util/widgets/primary_button.dart';

import '../../screens/app_image/app_images.dart';
import '../widgets/custom_fields.dart';
import 'forgot_password_two.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
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
                  child: Form(
                    key: formKey,
                    child: SingleChildScrollView(
                      child: SafeArea(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 50),
                            Center(
                              child: SizedBox(
                                height: 232,
                                width: 255,
                                child:
                                    Image.asset(AppImages.forgotPasswordLogo),
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
                                  "Don't worry, it happens to the best of us.Enter the email address associated with youraccount.",
                                  style: GoogleFonts.openSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.subTextColor),
                                )
                              ],
                            ),
                            const SizedBox(height: 30),
                            Center(
                              child: CustomFields(
                                  fillColor: Colors.white,
                                  obscureText: false,
                                  controller: emailController,
                                  hintText: 'Email',
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Please enter email";
                                    }
                                  }),
                            ),
                            const SizedBox(height: 30),
                            PrimaryButton(
                              title: "Submit",
                              onPressed: () {
                                if (formKey.currentState?.validate() == true) {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (_) =>
                                          const ForgotPasswordTwo()));
                                }
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                  )))
        ],
      ),
    );
  }
}
