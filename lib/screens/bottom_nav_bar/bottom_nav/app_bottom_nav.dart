import 'package:flutter/material.dart';

import '../../../themes/app_colors.dart';
import '../../app_image/app_images.dart';
import '../eco_credits/eco_credits_page.dart';
import '../home_screen/home_page.dart';
import '../profile/profile_page.dart';
import '../search_screens/search_page.dart';
import '../sell/sell_item_page.dart';

class AppBottomNavBar extends StatefulWidget {
  const AppBottomNavBar({super.key});

  @override
  _AppBottomNavBarState createState() => _AppBottomNavBarState();
}

class _AppBottomNavBarState extends State<AppBottomNavBar> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const SearchPage(),
    const SellItemPage(),
    const EcoCreditsPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: Container(
          height: 75,
          width: 350,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 15,
                spreadRadius: 0,
                offset: const Offset(0, 1),
                color: const Color(0xff000000).withOpacity(0.3),
              )
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            child: BottomNavigationBar(
              backgroundColor: AppColors.whiteColor,
              type: BottomNavigationBarType.fixed,
              currentIndex: _currentIndex,
              selectedItemColor: AppColors.blackColor,
              unselectedItemColor: const Color(0xff00213A4D).withOpacity(0.40),
              onTap: (
                int index,
              ) {
                setState(() {
                  _currentIndex = index;
                });
              },
              items: [
                const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: 'Home',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                  ),
                  label: 'Search',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.add_circle,
                  ),
                  label: 'Sell',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage(
                      AppImages.ecoCredit,
                    ),
                  ),
                  label: 'EcoCredit',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                  ),
                  label: 'Profile',
                ),
              ],
            ),
          ),
        ));
  }
}
