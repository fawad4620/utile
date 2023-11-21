import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:util/screens/bottom_nav_bar/sell/sell_item_page.dart';

import '../../../themes/app_colors.dart';
import '../../../widgets/primary_button.dart';
import '../bottom_nav/app_bottom_nav.dart';

class LastPage extends StatelessWidget {
  const LastPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/lastScreenBg.jpg"),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.home_filled,
                      color: AppColors.primaryColor,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => const AppBottomNavBar()));
                        },
                        child: Text("Back to home",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: AppColors.primaryColor,
                            ))),
                  ],
                ),
                const SizedBox(
                  height: 160,
                ),
                Container(
                  height: 175,
                  width: 175,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: const DecorationImage(
                          image: AssetImage(
                            "images/doneLoge.jpg",
                          ),
                          fit: BoxFit.cover)),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Congratulations!",
                  style: GoogleFonts.poiretOne(
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primaryColor,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Your item is successfully added",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primaryColor,
                  ),
                ),
                const SizedBox(
                  height: 190,
                ),
                PrimaryButton(
                  title: 'Add another item',
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => const SellItemPage()));
                  },
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
