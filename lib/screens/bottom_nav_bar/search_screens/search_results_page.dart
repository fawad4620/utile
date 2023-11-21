import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:util/app_model/search_model.dart';
import 'package:util/screens/bottom_nav_bar/search_screens/widgets/condition_text.dart';
import 'package:util/screens/bottom_nav_bar/search_screens/widgets/price_button.dart';

import '../../../themes/app_colors.dart';
import '../../../widgets/custom_search_field.dart';
import '../../app_image/app_images.dart';

class SearchResultsPage extends StatefulWidget {
  const SearchResultsPage({super.key});

  @override
  State<SearchResultsPage> createState() => _SearchResultsPageState();
}

class _SearchResultsPageState extends State<SearchResultsPage> {
  final List<SearchModel> items = [
    // search results model
    SearchModel(
      imagePath: AppImages.outdoorLights,
      title: 'Free',
      subtitle: 'Outdoor lights\nSW1W 0NY',
    ),
    SearchModel(
      imagePath: AppImages.setOfLights,
      title: '£6',
      subtitle: 'Set of lights\nPO16 7GZ',
    ),
    SearchModel(
      imagePath: AppImages.oneOutdoorLight,
      title: '£10',
      subtitle: 'One outdoor light\nGU16 7HF',
    ),
    SearchModel(
      imagePath: AppImages.roofLights,
      title: '£10',
      subtitle: 'Roof lights\nL1 8JQ',
    ),
    SearchModel(
      imagePath: AppImages.lights,
      title: '£10',
      subtitle: 'Roof lights\nL1 8JQ',
    ),
    SearchModel(
      imagePath: AppImages.lights,
      title: '£10',
      subtitle: 'Roof lights\nL1 8JQ',
    ),

    // Add more items as needed
  ];
  Color _buttonColor = Colors.white; // Initial color

  void _changeColor() {
    setState(() {
      // Generate a random color
      _buttonColor = Color(
          (DateTime.now().millisecondsSinceEpoch & 0xff00213A).toSigned(32));
    });
  }

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        leadingWidth: 80,
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Row(children: [
                  const SizedBox(
                    height: 10,
                  ),
                  CustomSearchField(
                    height: 56,
                    width: 240.w,
                    hintText: 'Lights',
                  ),
                  const Spacer(),

                  // show model bottom sheet
                  InkWell(
                    onTap: () {
                      setState(() {
                        _changeColor();
                      });
                      showModalBottomSheet(
                          backgroundColor: Colors.white,
                          isScrollControlled: true,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50),
                                  topLeft: Radius.circular(50))),
                          context: context,
                          builder: (_) {
                            return Stack(children: [
                              Container(
                                  height: 550,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: AppColors.whiteColor,
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: SingleChildScrollView(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 30),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(height: 30),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Filters!',
                                                style: GoogleFonts.poiretOne(
                                                    fontSize: 30,
                                                    fontWeight: FontWeight.w400,
                                                    color:
                                                        (AppColors.blackColor)),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                          builder: (_) =>
                                                              const SearchResultsPage()));
                                                },
                                                child: Icon(
                                                  Icons.close,
                                                  size: 30,
                                                  color: AppColors.blackColor,
                                                ),
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            "Price",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 15,
                                                color: AppColors.blackColor),
                                          ),
                                          const SizedBox(height: 10),
                                          const PriceButton(
                                            text: 'Paid',
                                            height: 35,
                                            width: 100,
                                            textTwo: 'Free',
                                          ),
                                          const SizedBox(
                                            height: 25,
                                          ),
                                          Text(
                                            "Sort by Price",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 15,
                                                color: AppColors.blackColor),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const PriceButton(
                                            text: 'High to low',
                                            height: 100,
                                            width: 170,
                                            textTwo: 'Low to High',
                                          ),
                                          const SizedBox(
                                            height: 25,
                                          ),
                                          Text(
                                            "Condition",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 15,
                                                color: AppColors.blackColor),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Wrap(
                                            spacing: 10,
                                            runSpacing: 10,
                                            direction: Axis.horizontal,
                                            children: const [
                                              ConditionText(
                                                height: 35,
                                                width: 140,
                                                text: 'New & Unused',
                                              ),
                                              ConditionText(
                                                height: 35,
                                                width: 170,
                                                text: 'Brand new without tags',
                                              ),
                                              ConditionText(
                                                height: 35,
                                                width: 140,
                                                text: 'Very good',
                                              ),
                                              ConditionText(
                                                height: 35,
                                                width: 150,
                                                text: 'Good',
                                              ),
                                              ConditionText(
                                                height: 35,
                                                width: 140,
                                                text: 'Satisfactory',
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 25),
                                          Text(
                                            "Category",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 15,
                                                color: AppColors.blackColor),
                                          ),
                                          const SizedBox(height: 10),
                                          Wrap(
                                            direction: Axis.horizontal,
                                            spacing: 10,
                                            runSpacing: 10,
                                            children: const [
                                              ConditionText(
                                                height: 35,
                                                width: 100,
                                                text: 'Electrical',
                                              ),
                                              ConditionText(
                                                height: 35,
                                                width: 100,
                                                text: 'plumbing',
                                              ),
                                              ConditionText(
                                                height: 35,
                                                width: 190,
                                                text: 'mechanical engineering',
                                              ),
                                              ConditionText(
                                                height: 35,
                                                width: 130,
                                                text: 'household items',
                                              ),
                                              SizedBox(
                                                height: 80,
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Positioned(
                                top: 480,
                                left: 30.w,
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        height: 50,
                                        width: 120,
                                        decoration: BoxDecoration(
                                            color: AppColors.whiteColor,
                                            border: Border.all(
                                                color: AppColors.blackColor,
                                                width: 1),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Center(
                                          child: Text(
                                            'Reset',
                                            style: TextStyle(
                                              color: AppColors.blackColor,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        height: 50,
                                        width: 200,
                                        decoration: BoxDecoration(
                                            color: AppColors.blackColor,
                                            border: Border.all(
                                                color: AppColors.blackColor,
                                                width: 1),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Center(
                                          child: Text(
                                            'Apply',
                                            style: TextStyle(
                                              color: AppColors.whiteColor,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ]);
                          });
                    },
                    child: Container(
                      height: 56,
                      width: 56,
                      decoration: BoxDecoration(
                        color: _buttonColor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 15,
                            spreadRadius: 1,
                            offset: const Offset(0, 0),
                            color: const Color(0xff000000).withOpacity(0.06),
                          )
                        ],
                      ),
                      child: Center(
                        child: (ImageIcon(AssetImage(AppImages.vectorIcons),
                            color: Colors.black)),
                      ),
                    ),
                  )
                ]),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: SizedBox(
                  height: 800.h,
                  width: double.infinity,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 30,
                            childAspectRatio: 0.6),
                    itemCount: items.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(items[index].imagePath),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(items[index].title,
                              style: GoogleFonts.openSans(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.primaryColor)),
                          Text(items[index].subtitle,
                              style: GoogleFonts.openSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.subtitleColor)),
                        ],
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
