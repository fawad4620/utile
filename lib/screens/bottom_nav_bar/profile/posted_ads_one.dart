import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:util/screens/bottom_nav_bar/profile/posted_ads_delete.dart';

import '../../../themes/app_colors.dart';
import '../../app_image/app_images.dart';
import '../sell/sell_item_page.dart';

class PostedAdsOne extends StatelessWidget {
  const PostedAdsOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const PostedAdsDelete()));
              },
              child: Container(
                height: 50,
                width: 160,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border:
                        Border.all(color: const Color(0xffb20101), width: 1)),
                child: Center(
                  child: Text(
                    'Delete',
                    style: GoogleFonts.openSans(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xffB20101),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const SellItemPage()));
              },
              child: Container(
                height: 50,
                width: 160,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.primaryColor),
                child: Center(
                  child: Text(
                    'Edit',
                    style: GoogleFonts.openSans(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xffFFFFFFB2),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        leadingWidth: 80,
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
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Circuit Breaker',
                style: GoogleFonts.poiretOne(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primaryColor),
              ),
              const SizedBox(
                height: 35,
              ),
              Container(
                height: 339,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(AppImages.breakerImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 13,
                    ),
                    Text('£10',
                        style: GoogleFonts.openSans(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        )),
                    Text(
                      'Circuit Breaker',
                      style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: const Color(0xff4D6475)),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adip\n'
                    'iscing elit, sed do eiusmod tempor incididunt\n'
                    'ut labore et dolore magna aliqua.',
                    style: GoogleFonts.openSans(
                      color: AppColors.primaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Postcode',
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'SW1W ONY',
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Category',
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'Women, Clothing',
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Conditions',
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'Open Box',
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Colours',
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'Red',
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
