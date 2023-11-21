import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:util/screens/bottom_nav_bar/sell/second_categories_page.dart';
import 'package:util/screens/bottom_nav_bar/sell/widgets/custom_categories.dart';

import '../../../themes/app_colors.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.mainColor,
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
        centerTitle: true,
        title: Text(
          "Categories",
          style: GoogleFonts.poiretOne(
            fontSize: 24,
            fontWeight: FontWeight.w400,
            color: AppColors.primaryColor,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(left: 28.w),
              child: Text(
                "Please select the one to see the sub-categories",
                style: GoogleFonts.openSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff4D6475)),
              )),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => const SecondCategoriesPage()));
            },
            child: CustomCategories(
              text: 'Electrical',
              icon: Icons.arrow_forward_ios,
              onpressed: () {},
            ),
          ),
          CustomCategories(
            text: 'Plumbing',
            icon: Icons.arrow_forward_ios,
            onpressed: () {},
          ),
          CustomCategories(
            text: 'Carpentry & Joinery',
            icon: Icons.arrow_forward_ios,
            onpressed: () {},
          ),
          CustomCategories(
            text: 'Mechanical & Engineering',
            icon: Icons.arrow_forward_ios,
            onpressed: () {},
          ),
          CustomCategories(
            text: 'DYI materials',
            icon: Icons.arrow_forward_ios,
            onpressed: () {},
          ),
          CustomCategories(
            text: 'Household Items',
            icon: Icons.arrow_forward_ios,
            onpressed: () {},
          ),
          Padding(
            padding: EdgeInsets.only(top: 8, left: 28.w),
            child: Text(
              "Other",
              style: GoogleFonts.openSans(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.primaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
