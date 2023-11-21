import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:util/screens/bottom_nav_bar/profile/posted_ads_one.dart';
import 'package:util/screens/bottom_nav_bar/profile/widgets/custom_posted_ads_card.dart';

import '../../app_image/app_images.dart';

class PostedAds extends StatelessWidget {
  const PostedAds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 75.w,
        elevation: 0,
        backgroundColor: Colors.transparent,
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
          TextButton(
            onPressed: () {},
            child: const Text(
              "Select",
              style: TextStyle(color: Colors.orange),
            ),
          ),
          SizedBox(
            width: 20.w,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Posted Ads",
              style: GoogleFonts.poiretOne(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff00213A)),
            ),
            const SizedBox(
              height: 40,
            ),
            CustomPostedAdsCard(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const PostedAdsOne()));
              },
              image: AppImages.breakerImage,
              text: '£10',
              title: 'Circuit breaker',
              Category: 'Electrical, Circuit',
              subtile: 'SW1W ONY',
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomPostedAdsCard(
              onPressed: () {},
              image: AppImages.outDoorLightPic,
              text: '£5',
              title: 'Roof light',
              Category: 'Home',
              subtile: 'L1 8JQ',
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
