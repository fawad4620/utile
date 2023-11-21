import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:util/screens/bottom_nav_bar/home_screen/widgets/custom_product_details.dart';

import '../../../themes/app_colors.dart';
import '../../../widgets/primary_button.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);
  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int credits = 0;
  bool isContainerClicked = false;
  Color containerColor = Colors.white;
  IconData iconData = Icons.favorite_border;
  Color iconColor = Colors.orange;
  void toggleContainer() {
    setState(() {
      isContainerClicked = !isContainerClicked;
      containerColor = isContainerClicked ? Colors.orange : Colors.white;
      iconData = isContainerClicked ? Icons.favorite : Icons.favorite_border;
      iconColor = isContainerClicked ? Colors.white : Colors.orange;
    });
  }

  int _currentIndex = 0;
  final List<String> images = [
    "images/img.png",
    "images/done.png",
    "images/done.png",
    "images/done.png",
    "images/done.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(30),
          child: Container(
            child: PrimaryButton(
              onPressed: () {
                if (credits == 0) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        elevation: 40,
                        shadowColor: const Color(0XFF00000033),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28),
                        ),
                        actions: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Are you sure?",
                                  style: GoogleFonts.poiretOne(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Please confirm that you wish to use",
                                  style: GoogleFonts.openSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "1 credit",
                                      style: GoogleFonts.openSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xffED7B30),
                                      ),
                                    ),
                                    Text(
                                      "to reveal the contact details",
                                      style: GoogleFonts.openSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.primaryColor,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "of the seller. ",
                                  style: GoogleFonts.openSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "This action cannot be undone.",
                                  style: GoogleFonts.openSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                                const SizedBox(
                                  height: 26,
                                ),
                                Row(
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        height: 50,
                                        width: 123,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: AppColors.primaryColor)),
                                        child: const Center(
                                          child: Text(
                                            "No",
                                            style: TextStyle(
                                                color: Color(0xff00213A)),
                                          ),
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Container(
                                        height: 50,
                                        width: 123,
                                        decoration: BoxDecoration(
                                          color: AppColors.primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border:
                                              Border.all(color: Colors.grey),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            "Yas",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          )
                        ],
                      );
                    },
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        elevation: 40,
                        shadowColor: Color(0XFF00000033),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28),
                        ),
                        actions: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 24,
                                ),
                                Text(
                                  "Out of EcoCredits?",
                                  style: GoogleFonts.poiretOne(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                                const SizedBox(
                                  height: 23,
                                ),
                                Text(
                                  "You are out of EcoCredits, to buy more \nplease click the button below to \npurchase sellers’ details",
                                  style: GoogleFonts.openSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                                const SizedBox(
                                  height: 46,
                                ),
                                PrimaryButton(
                                  title: 'Buy EcoCredits',
                                  onPressed: () {},
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          )
                        ],
                      );
                    },
                  );
                }

                // Show a dialog when the button is pressed
              },
              title: '+ Get Contact Details for 1 Credit',
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: [
              Container(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    SizedBox(
                      height: 445,
                      width: double.infinity,
                      child: CarouselSlider(
                        items: images.map((image) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Image.asset(
                                "images/breakerOnePic.png",
                              );
                            },
                          );
                        }).toList(),
                        options: CarouselOptions(
                          height: MediaQuery.of(context)
                              .size
                              .height, // Take the entire available height
                          viewportFraction: 3,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _currentIndex = index;
                            });
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      top: 382,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: images.map((url) {
                          int index = images.indexOf(url);
                          return Container(
                            width: 10.0,
                            height: 5.0,
                            margin: const EdgeInsets.symmetric(horizontal: 3.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: _currentIndex == index
                                  ? const Color(0xffED7B30)
                                  : Colors
                                      .white, // Customize the active and inactive dot colors
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        children: [
                          const SizedBox(
                            height: 80,
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              )),
                          const Spacer(),
                          GestureDetector(
                            onTap: toggleContainer,
                            child: Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                  color: containerColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Icon(iconData, size: 20, color: iconColor),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        top: 400,
                        child: Container(
                          height: 700,
                          width: 400,
                          decoration: const BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40),
                                topLeft: Radius.circular(40)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 35,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Circuit breaker",
                                      style: GoogleFonts.poiretOne(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.primaryColor,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "£10",
                                  style: GoogleFonts.openSans(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Description",
                                  style: GoogleFonts.openSans(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod tempor \nincididunt ut labore et dolore magna aliqua.",
                                  style: GoogleFonts.openSans(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff4D6475),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  " Ut enim ad minim veniam, quis nostrud \n exercitation ullamco laboris nisi ut aliquip\n ex ea commodo consequat.",
                                  style: GoogleFonts.openSans(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff4D6475),
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Category",
                                      style: GoogleFonts.openSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.primaryColor,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 106,
                                    ),
                                    Text(
                                      "Condition",
                                      style: GoogleFonts.openSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.primaryColor,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Electrical",
                                      style: GoogleFonts.openSans(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.primaryColor,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 97,
                                    ),
                                    Text(
                                      "New & Unused",
                                      style: GoogleFonts.openSans(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.primaryColor,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  "Phone Number",
                                  style: GoogleFonts.openSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                                Text(
                                  "+44 7531 524 568",
                                  style: GoogleFonts.openSans(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                Text(
                                  "Similar Products",
                                  style: GoogleFonts.poiretOne(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 475,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(children: [
                    InkWell(
                        onTap: () {},
                        child: const CustomProductDetails(
                          image: 'images/lights.png',
                          title: 'Free',
                          subtitle: 'Outdoor lights',
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    const CustomProductDetails(
                      image: 'images/lights.png',
                      title: '£10',
                      subtitle: 'One outdoor light',
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const CustomProductDetails(
                      image: 'images/lights.png',
                      title: '£6',
                      subtitle: 'Set of lights',
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                  ]),
                ),
              ),
            ]),
          ),
        ));
  }
}
