import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../auth_screens/widgets/custom_fields.dart';
import '../../../widgets/primary_button.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
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
        body: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/bgOne.jpg"),
                      fit: BoxFit.cover)),
              child: SingleChildScrollView(
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Edit Profile",
                              style: GoogleFonts.poiretOne(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff00213A)),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            CustomFields(
                              fillColor: Colors.white,
                              obscureText: false,
                              controller: TextEditingController(),
                              hintText: 'Name',
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            CustomFields(
                              fillColor: Colors.white,
                              obscureText: false,
                              controller: TextEditingController(),
                              hintText: 'Email',
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            CustomFields(
                              fillColor: Colors.white,
                              obscureText: false,
                              controller: TextEditingController(),
                              hintText: 'Phone Number',
                              keyboardType: TextInputType.number,
                            ),
                            const SizedBox(
                              height: 280,
                            ),
                            PrimaryButton(
                              title: 'Save Changes',
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
