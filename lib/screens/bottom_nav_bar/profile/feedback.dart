import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:util/screens/bottom_nav_bar/profile/widgets/custom_description_fields.dart';

import '../../../auth_screens/widgets/custom_fields.dart';
import '../../../themes/app_colors.dart';
import '../../../widgets/primary_button.dart';

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        leadingWidth: 75.w,
        backgroundColor: AppColors.appbarColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: AppColors.primaryColor,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Feedback',
                style: GoogleFonts.poiretOne(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: AppColors.primaryColor,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomFields(
                  fillColor: Colors.white,
                  hintText: 'Subject',
                  controller: TextEditingController(),
                  obscureText: false),
              const SizedBox(
                height: 35,
              ),
              const CustomDescriptionFields(hintText: 'Feedback'),
              const SizedBox(
                height: 280,
              ),
              PrimaryButton(
                onPressed: () {},
                title: 'Submit',
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
