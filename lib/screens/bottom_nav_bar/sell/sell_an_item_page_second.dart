import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:util/screens/bottom_nav_bar/sell/select_item_price_page.dart';
import 'package:util/screens/bottom_nav_bar/sell/sell_an_item_chose_color.dart';
import 'package:util/screens/bottom_nav_bar/sell/widgets/custom_dialog.dart';
import 'package:util/widgets/primary_button.dart';

import '../../../themes/app_colors.dart';
import '../../../widgets/custom_progress_stepper.dart';
import 'categories_page.dart';
import 'condition_page.dart';

class SellAnItemSecondPage extends StatelessWidget {
  const SellAnItemSecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        leadingWidth: 75.w,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          Row(
            children: [
              CustomProgressStepper(
                lineOneColor: AppColors.blackColor,
                stepperTwoColor: AppColors.blackColor,
                lineTwoColor: AppColors.greyColor,
                stepperThreeColor: Colors.transparent,
                lineThreeColor: AppColors.greyColor,
                stepperFourColor: Colors.transparent,
                borderColor: Colors.transparent,
                borderTwoColor: AppColors.greyColor,
                borderThreeColor: AppColors.greyColor,
              ),
              const SizedBox(width: 20),
              TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (_) {
                          return const CustomDialog();
                        });
                  },
                  child: Text(
                    "Cancel",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: AppColors.ecoCreditsColor,
                    ),
                  )),
              SizedBox(width: 20.w),
            ],
          ),
        ],
      ),
      body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: EdgeInsets.only(left: 30.w),
          child: Text(
            "Sell an item",
            style: GoogleFonts.poiretOne(
              fontSize: 30,
              fontWeight: FontWeight.w400,
              color: AppColors.primaryColor,
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const CategoriesPage()));
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Category",
                  style: GoogleFonts.openSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryColor,
                  ),
                ),
                const Spacer(),
                Text(
                  "Electrical, Circuit Breaker",
                  style: GoogleFonts.openSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primaryColor,
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                  color: Color(0xff00213A),
                )
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => const ConditionPage()));
          },
          child: Container(
            height: 60,
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(
                      color: AppColors.myBorderColor,
                    ),
                    bottom: BorderSide(
                      color: AppColors.myBorderColor,
                    ))),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Row(
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
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                    color: AppColors.primaryColor,
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 23.w),
            child: TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => const SellAnItemChoseColor()));
              },
              child: Row(
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
                    " (Optional)",
                    style: GoogleFonts.openSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff99A6B0),
                    ),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                    color: AppColors.primaryColor,
                  ),
                ],
              ),
            )),
        SizedBox(height: 340.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: PrimaryButton(
            title: 'Next',
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => const SelectItemPricePage()));
            },
          ),
        )
      ])),
    );
  }
}
