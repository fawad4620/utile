import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:util/screens/bottom_nav_bar/profile/my_profile.dart';

import '../../../widgets/primary_button.dart';

class PasswordUpdated extends StatelessWidget {
  const PasswordUpdated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/bgOne.jpg"), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Row(
              children: [
                const Icon(
                  Icons.home_filled,
                  color: Color(0xff00213A),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Back to home",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff00213A),
                        ))),
              ],
            ),
            const SizedBox(
              height: 130,
            ),
            SizedBox(
              height: 191,
              width: 189,
              child: Image.asset("images/doneLoge.jpg"),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Password Updated",
              style: GoogleFonts.poiretOne(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff00213A)),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Your item is successfully added",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff00213A)),
            ),
            const SizedBox(
              height: 220,
            ),
            PrimaryButton(
              title: 'Go to Profile',
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (_) => const MyProfile()));
              },
            ),
          ],
        ),
      ),
    ));
  }
}
