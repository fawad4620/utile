import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:util/screens/bottom_nav_bar/profile/widgets/custom_favourites.dart';

import '../../app_image/app_images.dart';

class Favourites extends StatelessWidget {
  const Favourites({Key? key}) : super(key: key);

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
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Favourites",
              style: GoogleFonts.poiretOne(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff00213A)),
            ),
            const SizedBox(
              height: 30,
            ),
            CustomFavourites(
              onPressed: () {},
              image: AppImages.breakerImage,
              text: '£10',
              title: 'Circuit breaker',
              subtitle: 'SW1W ONY',
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomFavourites(
              onPressed: () {},
              image: AppImages.pavingBrickPic,
              text: '£20',
              title: 'Paving bricks',
              subtitle: 'PO16 7GZ',
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
            CustomFavourites(
              onPressed: () {},
              image: AppImages.outDoorLightPic,
              text: 'Free',
              title: 'Outdoor lights',
              subtitle: 'GU16 7HF',
            ),
          ],
        ),
      ),
    );
  }
}
