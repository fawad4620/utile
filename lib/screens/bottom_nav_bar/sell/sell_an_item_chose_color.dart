import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:util/screens/bottom_nav_bar/sell/sell_an_item_page_second.dart';
import 'package:util/screens/bottom_nav_bar/sell/widgets/select_color.dart';

import '../../../themes/app_colors.dart';
import '../../../widgets/primary_button.dart';

class SellAnItemChoseColor extends StatefulWidget {
  const SellAnItemChoseColor({Key? key}) : super(key: key);

  @override
  State<SellAnItemChoseColor> createState() => _SellAnItemChoseColorState();
}

class _SellAnItemChoseColorState extends State<SellAnItemChoseColor> {
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
          "Colours",
          style: GoogleFonts.poiretOne(
              fontSize: 24,
              fontWeight: FontWeight.w400,
              color: const Color(0xff00213A)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
              child: SelectColor(
                  title: 'White',
                  icon: Icons.done,
                  iconColor: currentIndex == 0
                      ? const Color(0xffF89554)
                      : Colors.white),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentIndex = 1;
                });
              },
              child: SelectColor(
                  title: 'Black',
                  icon: Icons.done,
                  iconColor: currentIndex == 1
                      ? const Color(0xffF89554)
                      : Colors.white),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentIndex = 2;
                });
              },
              child: SelectColor(
                  title: 'Cream',
                  icon: Icons.done,
                  iconColor: currentIndex == 2
                      ? const Color(0xffF89554)
                      : Colors.white),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentIndex = 3;
                });
              },
              child: SelectColor(
                  title: 'Beige',
                  icon: Icons.done,
                  iconColor: currentIndex == 3
                      ? const Color(0xffF89554)
                      : Colors.white),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentIndex = 4;
                });
              },
              child: SelectColor(
                  title: 'Brown',
                  icon: Icons.done,
                  iconColor: currentIndex == 4
                      ? const Color(0xffF89554)
                      : Colors.white),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentIndex = 5;
                });
              },
              child: SelectColor(
                  title: 'Grey',
                  icon: Icons.done,
                  iconColor: currentIndex == 5
                      ? const Color(0xffF89554)
                      : Colors.white),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentIndex = 6;
                });
              },
              child: SelectColor(
                  title: 'Yellow',
                  icon: Icons.done,
                  iconColor: currentIndex == 6
                      ? const Color(0xffF89554)
                      : Colors.white),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentIndex = 7;
                });
              },
              child: SelectColor(
                  title: 'Orange',
                  icon: Icons.done,
                  iconColor: currentIndex == 7
                      ? const Color(0xffF89554)
                      : Colors.white),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentIndex = 8;
                });
              },
              child: SelectColor(
                  title: 'Pink',
                  icon: Icons.done,
                  iconColor: currentIndex == 8
                      ? const Color(0xffF89554)
                      : Colors.white),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentIndex = 9;
                });
              },
              child: SelectColor(
                  title: 'Red',
                  icon: Icons.done,
                  iconColor: currentIndex == 9
                      ? const Color(0xffF89554)
                      : Colors.white),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentIndex = 10;
                });
              },
              child: SelectColor(
                  title: 'Purple',
                  icon: Icons.done,
                  iconColor: currentIndex == 10
                      ? const Color(0xffF89554)
                      : Colors.white),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentIndex = 10;
                });
              },
              child: SelectColor(
                  title: 'Green',
                  icon: Icons.done,
                  iconColor: currentIndex == 10
                      ? const Color(0xffF89554)
                      : Colors.white),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentIndex = 10;
                });
              },
              child: SelectColor(
                  title: 'Bide',
                  icon: Icons.done,
                  iconColor: currentIndex == 10
                      ? const Color(0xffF89554)
                      : Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
