import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:util/screens/bottom_nav_bar/sell/widgets/custom_dialog.dart';

import '../../../auth_screens/widgets/custom_fields.dart';
import '../../../themes/app_colors.dart';
import '../../../widgets/custom_progress_stepper.dart';
import '../../../widgets/primary_button.dart';
import 'confirmation_page.dart';

class SelectItemPricePage extends StatefulWidget {
  const SelectItemPricePage({Key? key}) : super(key: key);

  @override
  State<SelectItemPricePage> createState() => _SelectItemPricePageState();
}

class _SelectItemPricePageState extends State<SelectItemPricePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(30),
        child: PrimaryButton(
          title: 'Next',
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const ConfirmationPage()));
          },
        ),
      ),
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        leadingWidth: 76.w,
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
                lineThreeColor: Colors.grey,
                stepperFourColor: const Color(0xff00213A80),
                borderColor: const Color(0xff00213A80),
                borderTwoColor: AppColors.primaryColor,
                borderThreeColor: Colors.grey,
              ),
              SizedBox(
                width: 45.h,
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
                "Sell an item",
                style: GoogleFonts.poiretOne(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: AppColors.primaryColor,
                ),
              ),
              const SizedBox(
                height: 34,
              ),
              Text(
                "Price",
                style: GoogleFonts.openSans(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryColor,
                ),
              ),
              Text(
                "Please select if the item is free or not",
                style: GoogleFonts.openSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.primaryColor,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex = 0;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        color: currentIndex == 0
                            ? const Color(0xffF89554)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            color: currentIndex == 0
                                ? Colors.transparent
                                : Colors.grey),
                      ),
                      child: Center(
                        child: Text(
                          "Free",
                          style: TextStyle(
                              color: currentIndex == 0
                                  ? Colors.white
                                  : const Color(0xff00213A)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex = 1;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          color: currentIndex == 1
                              ? const Color(0xffF89554)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              color: currentIndex == 1
                                  ? Colors.transparent
                                  : Colors.grey)),
                      child: Center(
                        child: Text(
                          "Paid",
                          style: TextStyle(
                              color: currentIndex == 1
                                  ? Colors.white
                                  : const Color(0xff00213A)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CustomFields(
                fillColor: Colors.white,
                hintText: 'Price',
                controller: TextEditingController(),
                obscureText: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
