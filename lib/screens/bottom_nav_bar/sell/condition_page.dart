import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:util/screens/bottom_nav_bar/sell/sell_an_item_page_second.dart';
import 'package:util/screens/bottom_nav_bar/sell/widgets/condition_custom.dart';

import '../../../themes/app_colors.dart';
import '../../../widgets/primary_button.dart';

class ConditionPage extends StatefulWidget {
  const ConditionPage({Key? key}) : super(key: key);

  @override
  State<ConditionPage> createState() => _ConditionPageState();
}

class _ConditionPageState extends State<ConditionPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(30),
        child: PrimaryButton(
          title: 'Done',
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => const SellAnItemSecondPage()));
          },
        ),
      ),
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        leadingWidth: 75.w,
        elevation: 0,
        backgroundColor: AppColors.mainColor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: AppColors.primaryColor,
              size: 27,
            )),
        centerTitle: true,
        title: Text(
          "Condition",
          style: GoogleFonts.poiretOne(
              fontSize: 24,
              fontWeight: FontWeight.w400,
              color: const Color(0xff00213A)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentIndex = 0;
                });
              },
              child: ConditionCustom(
                  leadingText: 'New & Unused',
                  title: 'A brand new, unused item with tags',
                  text: 'attached or in original packaging',
                  icon: Icons.done,
                  iconColor: currentIndex == 0
                      ? const Color(0xffF89554)
                      : Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentIndex = 1;
                });
              },
              child: ConditionCustom(
                  leadingText: 'Brand new without tags',
                  title: 'A brand new, unused item without tags or',
                  text: 'original packaging',
                  icon: Icons.done,
                  iconColor: currentIndex == 1
                      ? const Color(0xffF89554)
                      : Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentIndex = 2;
                });
              },
              child: ConditionCustom(
                  leadingText: 'Very good',
                  title: 'A lightly used item that may have slight',
                  text: 'imperfections, but still looks great',
                  icon: Icons.done,
                  iconColor: currentIndex == 2
                      ? const Color(0xffF89554)
                      : Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentIndex = 3;
                });
              },
              child: ConditionCustom(
                  leadingText: 'Good',
                  title: 'A used item that may show imperfections',
                  text: 'and signs of wear',
                  icon: Icons.done,
                  iconColor: currentIndex == 3
                      ? const Color(0xffF89554)
                      : Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentIndex = 4;
                });
              },
              child: ConditionCustom(
                  leadingText: 'Satisfactory',
                  title: 'A frequently used item with imperfections',
                  text: 'and signs of wear.',
                  icon: Icons.done,
                  iconColor: currentIndex == 4
                      ? const Color(0xffF89554)
                      : Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
