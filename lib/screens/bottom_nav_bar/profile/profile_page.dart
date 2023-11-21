import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:util/auth_screens/sign_up/sign_up_option_screen.dart';
import 'package:util/screens/bottom_nav_bar/profile/favorites.dart';
import 'package:util/screens/bottom_nav_bar/profile/feedback.dart';
import 'package:util/screens/bottom_nav_bar/profile/legal_information.dart';
import 'package:util/screens/bottom_nav_bar/profile/posted_ads.dart';
import 'package:util/screens/bottom_nav_bar/profile/privacy_policy.dart';
import 'package:util/screens/bottom_nav_bar/profile/purchase_history.dart';
import 'package:util/screens/bottom_nav_bar/profile/q_and_a.dart';
import 'package:util/screens/bottom_nav_bar/profile/widgets/custom_profile_text.dart';

import 'my_profile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 80,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Row(
              children: [
                Text(
                  "Daniel Craig",
                  style: GoogleFonts.poiretOne(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff00213A)),
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      "3",
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffF89554)),
                    ),
                    Text(
                      "Eco Credits",
                      style: TextStyle(
                          color: Color(0xff00213A),
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          CustomProfileText(
            text: 'Profile',
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const MyProfile()));
            },
          ),
          CustomProfileText(
            text: 'Favourites',
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const Favourites()));
            },
          ),
          CustomProfileText(
            text: 'Posted Ads',
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const PostedAds()));
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: ListTile(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const PurchaseHistory()));
              },
              leading: const Text(
                "Purchase History",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff00213A)),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
                size: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w),
            child: Text(
              "Services",
              style: GoogleFonts.poiretOne(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff00213A)),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: ListTile(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => const QAndA()));
              },
              leading: const Text(
                "Q&A",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff00213A)),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
                size: 20,
              ),
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          const SizedBox(
            height: 2,
          ),
          CustomProfileText(
            text: 'Feedback',
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const FeedbackScreen()));
            },
          ),
          CustomProfileText(
            text: 'Privacy Policy',
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const PrivacyPolicy()));
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => const LegalInformation()));
              },
              leading: const Text(
                "Legal Information ",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff00213A)),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
                size: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.only(left: 23.w),
            child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => const SignUpOptionScreen()));
                },
                child: const Text(
                  "Logout",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                )),
          ),
          const SizedBox(height: 20)
        ])));
  }
}
