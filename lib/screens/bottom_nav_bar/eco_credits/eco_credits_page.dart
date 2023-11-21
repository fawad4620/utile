import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:util/screens/app_image/app_images.dart';
import 'package:util/screens/bottom_nav_bar/eco_credits/widgets/custom_card.dart';

import '../../../widgets/primary_button.dart';
import 'eco_credits_pricing.dart';

class EcoCreditsPage extends StatelessWidget {
  const EcoCreditsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 60,
            ),
            const Text(
              "3",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffF89554)),
            ),
            const SizedBox(
              height: 10,
            ),
            Text("EcoCredits",
                style: GoogleFonts.poiretOne(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff00213A))),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "EcoCredits are required to purchase seller details. Upon sign up you receive 3 free EcoCredits, you can purchase more below.",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff4D6475)),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Once details are purchased you won’t need to purchase them again.",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff4D6475)),
            ),
            const SizedBox(
              height: 30,
            ),
            Text("Purchase History",
                style: GoogleFonts.poiretOne(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff00213A))),
            const SizedBox(
              height: 15,
            ),
            CustomCard(
              onPressed: () {},
              image: AppImages.breakerImage,
              text: '£10',
              title: 'Circuit breaker',
              subtitle: 'Used',
              icon: Icons.arrow_forward_ios,
              othertext: '1 EcoCredit',
              texts: 'SW1W ONY',
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 1,
              endIndent: 20,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomCard(
              onPressed: () {},
              image: AppImages.pavingBrickPic,
              text: '£20',
              title: 'Paving bricks',
              subtitle: 'Used',
              othertext: '1 EcoCredit',
              texts: 'PO16 7GZ',
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 1,
              endIndent: 20,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomCard(
              onPressed: () {},
              image: AppImages.outDoorLightPic,
              text: 'Free',
              title: 'Outdoor lights',
              subtitle: 'Used',
              othertext: '1 EcoCredit',
              texts: 'GU16 7HF',
            ),
            const SizedBox(
              height: 25,
            ),
            PrimaryButton(
              title: 'Purchase EcoCredits',
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => const EcoCreditsPricing()));
              },
            ),
            const SizedBox(height: 20)
          ]),
        ),
      ),
    );
  }
}
