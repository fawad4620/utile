import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:util/screens/bottom_nav_bar/profile/widgets/custom_card_purchase_history.dart';

import '../../../themes/app_colors.dart';
import '../../app_image/app_images.dart';

class PurchaseHistory extends StatelessWidget {
  const PurchaseHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        leadingWidth: 75.w,
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
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Purchase History',
                style: GoogleFonts.poiretOne(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primaryColor),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomCardPurchaseHistory(
                onpressed: () {},
                image: AppImages.breakerImage,
                text: '£10',
                titleTwo: 'SW1W 0NY',
                title: 'Circuit breaker',
                subtitle: 'Used',
                subtitleTwo: ' 1 EcoCredit',
                icon: Icons.keyboard_arrow_right,
              ),
              const SizedBox(
                height: 5,
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 5,
              ),
              CustomCardPurchaseHistory(
                onpressed: () {},
                image: AppImages.pavingBrickPic,
                text: '£20',
                title: 'Circuit breaker',
                titleTwo: 'PO16 7GZ',
                subtitle: 'Used ',
                subtitleTwo: ' 1 EcoCredit',
                icon: Icons.keyboard_arrow_right,
              ),
              const SizedBox(
                height: 5,
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 5,
              ),
              CustomCardPurchaseHistory(
                onpressed: () {},
                image: AppImages.outDoorLightPic,
                text: 'Free',
                title: 'Circuit breaker',
                titleTwo: 'GU16 7HF',
                subtitle: 'Used ',
                subtitleTwo: ' 1 EcoCredit',
                icon: Icons.keyboard_arrow_right,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
