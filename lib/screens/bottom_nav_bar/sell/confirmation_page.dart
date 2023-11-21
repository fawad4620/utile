import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:util/screens/bottom_nav_bar/sell/widgets/custom_dialog.dart';

import '../../../themes/app_colors.dart';
import '../../../widgets/custom_progress_stepper.dart';
import '../../../widgets/primary_button.dart';
import 'last_page.dart';

class ConfirmationPage extends StatelessWidget {
  const ConfirmationPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(30),
        child: PrimaryButton(
          title: 'Upload',
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => const LastPage()));
          },
        ),
      ),
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        leadingWidth: 75.w,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: AppColors.primaryColor,
              size: 27,
            )),
        elevation: 0,
        backgroundColor: AppColors.mainColor,
        actions: [
          Row(
            children: [
              CustomProgressStepper(
                lineOneColor: AppColors.primaryColor,
                stepperTwoColor: AppColors.primaryColor,
                lineTwoColor: AppColors.primaryColor,
                stepperThreeColor: AppColors.primaryColor,
                lineThreeColor: AppColors.primaryColor,
                stepperFourColor: AppColors.primaryColor,
                borderColor: AppColors.primaryColor,
                borderTwoColor: AppColors.primaryColor,
                borderThreeColor: AppColors.primaryColor,
              ),
              SizedBox(
                width: 45.w,
              ),
              InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (_) {
                        return const CustomDialog();
                      });
                },
                child: Text(
                  "Cancel",
                  style: GoogleFonts.openSans(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xffF89554),
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              )
            ],
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Confirmation",
                style: GoogleFonts.poiretOne(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff00213A)),
              ),
              const SizedBox(
                height: 35,
              ),
              Container(
                height: 339,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                      image: AssetImage("images/breakerOnePic.png"),
                      fit: BoxFit.cover,
                    )),
              ),
              const SizedBox(
                height: 17,
              ),
              Text(
                "£10",
                style: GoogleFonts.openSans(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryColor,
                ),
              ),
              Text(
                "Circuit Breaker",
                style: GoogleFonts.openSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff4D6475),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Divider(
                thickness: 1,
                color: Color(0xff426C794D),
              ),
              const SizedBox(
                height: 14,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor \nincididunt ut labore.",
                style: GoogleFonts.openSans(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primaryColor),
              ),
              const SizedBox(
                height: 12,
              ),
              const Divider(
                thickness: 1,
                color: Color(0xff426C794D),
              ),
              const SizedBox(
                height: 14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Category",
                    style: GoogleFonts.openSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  Text(
                    "Women, Clothing",
                    style: GoogleFonts.openSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              const Divider(
                thickness: 1,
                color: Color(0xff426C794D),
              ),
              const SizedBox(
                height: 14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Conditions",
                    style: GoogleFonts.openSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  Text(
                    "Brand new without tags",
                    style: GoogleFonts.openSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              const Divider(
                thickness: 1,
                color: Color(0xff426C794D),
              ),
              const SizedBox(
                height: 14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Colours",
                    style: GoogleFonts.openSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  Text(
                    "Brand new without tags",
                    style: GoogleFonts.openSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
