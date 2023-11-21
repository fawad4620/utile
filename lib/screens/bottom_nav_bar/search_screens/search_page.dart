import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:util/screens/bottom_nav_bar/search_screens/search_results_page.dart';

import '../../../themes/app_colors.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Map<String, dynamic>> recentSearch = [
    {"title": "Lights", "widget": const SearchResultsPage()},
    {"title": "Electrical wires", "widget": const Placeholder()},
  ];

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 56,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 15,
                      spreadRadius: 1,
                      offset: const Offset(0, 3),
                      color: const Color(0xff000000).withOpacity(0.15),
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 6),
                  child: TextField(
                    style: const TextStyle(color: Colors.black),
                    controller: _searchController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search',
                      prefixIcon: Icon(
                        Icons.search,
                        size: 25,
                        color: Colors.black,
                      ),
                    ),
                    onChanged: (text) {
                      setState(() {});
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Recent search!',
                style: GoogleFonts.poiretOne(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    color: (AppColors.blackColor)),
              ),
              Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: recentSearch.length,
                      itemBuilder: (BuildContext context, index) {
                        var recent = recentSearch[index];
                        String title = recent['title'];
                        Widget page = recent['widget'];
                        if (title
                            .toLowerCase()
                            .contains(_searchController.text.toLowerCase())) {
                          return InkWell(
                            onTap: () {
                              // Navigate to item details screen
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => page,
                                  ));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Text(
                                title.toString(),
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: AppColors.subtitleColor),
                              ),
                            ),
                          );
                        } else {
                          return const SizedBox();
                        }
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
