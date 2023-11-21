import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../themes/app_colors.dart';
import '../sell_item_page.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(28),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 21),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Text(
                'Are you sure?',
                style: GoogleFonts.poiretOne(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    color: (AppColors.blackColor)),
              ),
              const SizedBox(height: 20),
              Text(
                'If you cancel now your progress will\nbe lost and you will have to start over\nthe process of adding an item.',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: AppColors.blackColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 25),
                child: Row(
                  children: [
                    SizedBox(
                      height: 50,
                      width: 130,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            side: const BorderSide(color: Colors.black),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: Colors.white),
                        onPressed: () {
                          Navigator.of(context).pop(); // Close the dialog
                        },
                        child: Text(
                          'No',
                          style: TextStyle(color: AppColors.blackColor),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                      height: 50,
                      width: 130,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            side: BorderSide(color: AppColors.blackColor),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: AppColors.blackColor),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (_) => const SellItemPage()),
                          );
                          // Close the dialog
                        },
                        child: const Text('Yas'),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
