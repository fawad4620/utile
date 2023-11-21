import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:util/screens/bottom_nav_bar/home_screen/product_details.dart';
import 'package:util/screens/bottom_nav_bar/home_screen/widgets/category_buttons.dart';
import 'package:util/screens/bottom_nav_bar/home_screen/widgets/popular_items.dart';
import 'package:util/widgets/primary_button.dart';

import '../../../themes/app_colors.dart';
import '../../../widgets/custom_search_field.dart';
import '../../app_image/app_images.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  int currentIndex = 0;
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      showDialog(
          context: context,
          builder: (context) => SimpleDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28)),
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 15),
                        Text(
                          'Congratulations!',
                          style: GoogleFonts.poiretOne(
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                              color: (AppColors.blackColor)),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'You’ve received',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: AppColors.blackColor,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          '3 free EcoCredits',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: AppColors.orangeColor,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Wrap(
                          direction: Axis.horizontal,
                          children: [
                            Text(
                              'EcoCredits are required to reveal contact details of sellers. You can buy more credits in the EcoCredit section.',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: AppColors.blackColor,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        PrimaryButton(
                          title: "OK",
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          primary: Theme.of(context).primaryColor,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ));
    });
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        CustomSearchField(
                          height: 56,
                          width: 235.w,
                          hintText: 'search',
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 56,
                          width: 95,
                          decoration: BoxDecoration(
                              color: AppColors.ecoCreditsColor,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10))),
                          child: Column(
                            children: [
                              const SizedBox(height: 5),
                              const Text(
                                "3",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 23,
                                    color: Colors.white),
                              ),
                              Text(
                                "EcoCredits",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                    color: AppColors.blackColor),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.w),
                    child: Text(
                      'Category',
                      style: GoogleFonts.poiretOne(
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                          color: (AppColors.textColor)),
                    ),
                  ),
                  const SizedBox(height: 15),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30.w),
                      child: Row(
                        children: const [
                          CategoryButtons(
                              height: 50, width: 95, text: "Electrical"),
                          SizedBox(width: 10),
                          CategoryButtons(
                              height: 50, width: 95, text: "Plumbing"),
                          SizedBox(
                            width: 15,
                          ),
                          CategoryButtons(
                              height: 50,
                              width: 170,
                              text: "Carpentry & joinery"),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TabBar(
                    indicatorPadding: EdgeInsets.only(left: 30.w),
                    labelColor: Colors.black,
                    labelPadding: const EdgeInsets.only(right: 5),
                    labelStyle: GoogleFonts.poiretOne(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: (AppColors.blackColor)),
                    indicatorColor: AppColors.orangeColor,
                    dividerColor: Colors.red,
                    indicatorWeight: 3,
                    controller: tabController,
                    tabs: const [
                      Tab(
                        text: "All",
                      ),
                      Tab(
                        text: "Near me",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Row(
                      children: [
                        Text(
                          'Popular Items',
                          style: GoogleFonts.poiretOne(
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                              color: (AppColors.textColor)),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'See All',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: (AppColors.ecoCreditsColor)),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.only(left: 30.w),
                  child: Row(
                    children: [
                      PopularItems(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => const ProductDetail()));
                          },
                          image: AppImages.breakerImage,
                          height: 190.h,
                          width: 150.w,
                          titleText: "£10",
                          subTitle: "Circuit breaker"),
                      const SizedBox(
                        width: 10,
                      ),
                      PopularItems(
                          image: AppImages.stonesImage,
                          height: 190.h,
                          width: 150.w,
                          titleText: "Free",
                          subTitle: "Decorative stones"),
                      const SizedBox(width: 10),
                      PopularItems(
                          image: AppImages.breakerImage,
                          height: 190.h,
                          width: 150.w,
                          titleText: "£5",
                          subTitle: "Set of tiles"),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Text(
                      'Just for you',
                      style: GoogleFonts.poiretOne(
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                          color: (AppColors.textColor)),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PopularItems(
                      image: AppImages.woodenChair,
                      height: 190.h,
                      width: 150.w,
                      titleText: "Free",
                      subTitle: "Wooden chair"),
                  const SizedBox(
                    width: 10,
                  ),
                  PopularItems(
                      image: AppImages.pavingBricks,
                      height: 190.h,
                      width: 150.w,
                      titleText: "£20",
                      subTitle: "Paving bricks"),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PopularItems(
                      image: AppImages.woodPanelsPic,
                      height: 190.h,
                      width: 150.w,
                      titleText: "£6",
                      subTitle: "Wood Panels"),
                  const SizedBox(
                    width: 10,
                  ),
                  PopularItems(
                      image: AppImages.setOfVintageLamps,
                      height: 190.h,
                      width: 150.w,
                      titleText: "Free",
                      subTitle: "Set of vintage lamps"),
                ],
              ),
              const SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
