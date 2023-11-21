import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:util/screens/bottom_nav_bar/sell/sell_an_item_page_second.dart';
import 'package:util/screens/bottom_nav_bar/sell/widgets/custom_dialog.dart';
import 'package:util/screens/bottom_nav_bar/sell/widgets/sell_item_fields.dart';
import 'package:util/screens/bottom_nav_bar/sell/widgets/take_photo.dart';

import '../../../themes/app_colors.dart';
import '../../../widgets/custom_progress_stepper.dart';
import '../../../widgets/primary_button.dart';
import '../../app_image/app_images.dart';

class SellItemPage extends StatefulWidget {
  const SellItemPage({super.key});

  @override
  State<SellItemPage> createState() => _SellItemPageState();
}

class _SellItemPageState extends State<SellItemPage> {
  TextEditingController postCodeController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  bool _allFieldsFilled = false;

  void _checkFields() {
    if (postCodeController.text.isNotEmpty &&
        titleController.text.isNotEmpty &&
        descriptionController.text.isNotEmpty) {
      setState(() {
        _allFieldsFilled = true;
      });
    } else {
      setState(() {
        _allFieldsFilled = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: AppBar(
          leadingWidth: 75.w,
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          actions: [
            Row(
              children: [
                CustomProgressStepper(
                  lineOneColor: Colors.grey,
                  stepperTwoColor: Colors.transparent,
                  lineTwoColor: AppColors.greyColor,
                  stepperThreeColor: Colors.transparent,
                  lineThreeColor: AppColors.greyColor,
                  stepperFourColor: Colors.transparent,
                  borderColor: Colors.grey,
                  borderTwoColor: AppColors.greyColor,
                  borderThreeColor: AppColors.greyColor,
                ),
                const SizedBox(width: 25),
                TextButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (_) {
                            return const CustomDialog();
                          });
                    },
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: AppColors.ecoCreditsColor,
                      ),
                    )),
                SizedBox(
                  width: 20.w,
                ),
              ],
            ),
          ],
        ),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Sell an item',
                style: GoogleFonts.poiretOne(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    color: (AppColors.blackColor)),
              ),
              const SizedBox(height: 30),
              SellItemFields(
                controller: postCodeController,
                onChanged: (_) => _checkFields(),
                hintText: 'Postcode',
              ),
              const SizedBox(height: 30),
              SellItemFields(
                controller: titleController,
                onChanged: (_) => _checkFields(),
                hintText: 'Title',
              ),
              const SizedBox(height: 30),
              Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: AppColors.textFieldBorderColor, width: 1)),
                  child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 3),
                      child: TextField(
                        onChanged: (_) => _checkFields(),
                        controller: descriptionController,
                        expands: true,
                        maxLines: null,
                        style: const TextStyle(color: Color(0xff667987)),
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Description',
                            hintStyle: TextStyle(color: Color(0xff667987))),
                      ))),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  'Be sure to include all the details including\nimperfections if any ',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: (AppColors.blackColor)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Photos',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: (AppColors.blackColor)),
              ),
              Text(
                'Take up to 10 photos of the item and make sure\nto capture all the details',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: (AppColors.subtitleColor)),
              ),
              const SizedBox(
                height: 20,
              ),
              DottedBorder(
                strokeWidth: 2,
                color: AppColors.blackColor,
                borderType: BorderType.RRect,
                radius: const Radius.circular(12),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    color: AppColors.whiteColor,
                    child: Center(
                      child: Text("+ Take Photos",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: AppColors.primaryColor,
                          )),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Wrap(
                runSpacing: 10,
                spacing: 5,
                children: [
                  CustomTakePhotos(
                    image: AppImages.takePhotos,
                  ),
                  CustomTakePhotos(
                    image: AppImages.takePhotosOne,
                  ),
                  CustomTakePhotos(
                    image: AppImages.takePhotoTwo,
                  ),
                  CustomTakePhotos(
                    image: AppImages.takePhotoTwo,
                  ),
                  CustomTakePhotos(
                    image: AppImages.takePhotosOne,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              PrimaryButton(
                primary: _allFieldsFilled
                    ? AppColors.primaryColor
                    : AppColors.inActiveColor,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => const SellAnItemSecondPage()));
                },
                title: 'Next',
              ),
              const SizedBox(
                height: 20,
              )
            ]),
          ),
        )));
  }
}
