import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:util/screens/bottom_nav_bar/profile/widgets/my_profile_widgets.dart';

import 'change_password.dart';
import 'edit_profile.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leadingWidth: 75.w,
        backgroundColor: Colors.white,
        elevation: 0,
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
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Profile",
                      style: GoogleFonts.poiretOne(
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff00213A)),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => const EditProfile()));
                      },
                      child: const Text(
                        "Edit",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.orange),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const MyProfileWidgets(
            text: 'Full name',
            subtext: 'Daniel Craig',
          ),
          const MyProfileWidgets(text: 'Phone', subtext: '+44 125 2345 222'),
          const MyProfileWidgets(
              text: 'Email', subtext: 'daniel.craig@gmail.com'),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Password",
                  style: TextStyle(
                      color: Color(0xff00213A),
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 195,
                ),
                Text(
                  "*********",
                  style: TextStyle(
                      color: Color(0xff00213A),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 195),
            child: TextButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const ChangePassword()));
              },
              child: const Text(
                "Change Password",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.orange),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
