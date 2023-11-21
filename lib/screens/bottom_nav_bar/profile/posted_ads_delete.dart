import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:util/screens/bottom_nav_bar/profile/widgets/custom_card_post_ads_delete.dart';

import '../../../themes/app_colors.dart';
import '../../app_image/app_images.dart';

class PostedAdsDelete extends StatefulWidget {
  const PostedAdsDelete({super.key});

  @override
  State<PostedAdsDelete> createState() => _PostedAdsDeleteState();
}

class _PostedAdsDeleteState extends State<PostedAdsDelete> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Cancel',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffF89554)),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Posted Ads',
                  style: GoogleFonts.poiretOne(
                    fontWeight: FontWeight.w400,
                    fontSize: 30,
                    color: AppColors.primaryColor,
                  )),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomCardPostedAdsDelete(
                child: Icon(
                  Icons.done,
                  color: currentIndex == 0 ? Colors.orange : Colors.transparent,
                ),
                onPressed: () {
                  setState(() {
                    currentIndex = 0;
                  });
                },
                image: AppImages.breakerImage,
                text: '£10',
                title: 'Circuit breaker',
                Category: 'Electrical, Circuit',
                subtile: 'SW1W ONY',
              ),
              const Divider(
                thickness: 1,
              ),
              CustomCardPostedAdsDelete(
                child: Icon(
                  Icons.done,
                  color: currentIndex == 1 ? Colors.orange : Colors.transparent,
                ),
                onPressed: () {
                  setState(() {
                    currentIndex = 1;
                  });
                },
                image: AppImages.breakerImage,
                text: '£10',
                title: 'Circuit breaker',
                Category: 'Electrical, Circuit',
                subtile: 'SW1W ONY',
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 250,
              ),
              InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (_) {
                        return Container(
                          width: 320,
                          height: 235,
                          child: AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(28)),
                            title: Text(
                              "Are you sure?",
                              style: GoogleFonts.poiretOne(
                                fontWeight: FontWeight.w400,
                                fontSize: 30,
                                color: AppColors.primaryColor,
                              ),
                            ),
                            content: const Text(
                              'This item will be deleted,this action cannot be reversed.',
                            ),
                            contentTextStyle: GoogleFonts.openSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.primaryColor,
                            ),
                            actionsPadding:
                                const EdgeInsets.only(right: 5, bottom: 15),
                            actions: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 120.w,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            color: AppColors.primaryColor,
                                          )),
                                      child: Center(
                                        child: Text(
                                          'No',
                                          style: GoogleFonts.openSans(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15,
                                            color: AppColors.primaryColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 120.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: AppColors.primaryColor,
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Yes',
                                          style: GoogleFonts.openSans(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15,
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
                              )
                            ],
                          ),
                        );
                      });
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xffB20101),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Delete',
                      style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
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
