import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:util/screens/bottom_nav_bar/sell/sell_an_item_page_second.dart';
import 'package:util/screens/bottom_nav_bar/sell/widgets/select_color.dart';

import '../../../../themes/app_colors.dart';
import '../../../../widgets/primary_button.dart';

class SecondCategoriesPage extends StatefulWidget {
  const SecondCategoriesPage({Key? key}) : super(key: key);

  @override
  State<SecondCategoriesPage> createState() => _SecondCategoriesPageState();
}

class _SecondCategoriesPageState extends State<SecondCategoriesPage> {
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
        elevation: 0,
        backgroundColor: AppColors.mainColor,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: AppColors.primaryColor,
                size: 27,
              )),
        ),
        centerTitle: true,
        title: Text(
          "Categories",
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
            Padding(
              padding: const EdgeInsets.only(left: 28),
              child: Text(
                "Please select the ones that apply",
                style: GoogleFonts.openSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff4D6475),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentIndex = 0;
                });
              },
              child: SelectColor(
                  title: 'Lights',
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
                  title: 'Wires',
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
                  title: 'Lights Fittings',
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
                  title: 'Sockets',
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
                  title: 'Switches',
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
                  title: 'Power Cables',
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
                  title: 'Cable Connectors',
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
                  title: 'Fuses',
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
                  title: 'Electric Meters',
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
                  title: 'Time Relays',
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
                  title: 'Circuit Breakers',
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
