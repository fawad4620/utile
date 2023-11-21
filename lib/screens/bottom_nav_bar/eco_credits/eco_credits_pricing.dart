import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:util/screens/bottom_nav_bar/eco_credits/widgets/eco_credits_pricing.dart';

import '../../../widgets/primary_button.dart';

class EcoCreditsPricing extends StatefulWidget {
  const EcoCreditsPricing({Key? key}) : super(key: key);

  @override
  State<EcoCreditsPricing> createState() => _EcoCreditsPricingState();
}

class _EcoCreditsPricingState extends State<EcoCreditsPricing> {
  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: const Text(
            'Confirm Your In-App Purchase',
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
          content: Column(
            children: const [
              SizedBox(
                height: 5,
              ),
              Text(
                'Do you want to buy Full App',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w300),
              ),
              Text(
                'Unlock for £2.00?',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '[Environment: SandBox ]',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
          actions: <Widget>[
            CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Cancel',
                style: TextStyle(fontSize: 18.0, color: Colors.blue),
              ),
            ),
            CupertinoActionSheetAction(
                onPressed: () {},
                child: const Text(
                  'Buy',
                  style: TextStyle(fontSize: 18.0, color: Colors.blue),
                ))
          ],
        );
      },
    );
  }

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leadingWidth: 75.w,
        backgroundColor: Colors.transparent,
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
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Purchase EcoCredits",
                    style: GoogleFonts.poiretOne(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff00213A))),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Select the number of EcoCredits you wish to purchase, they will be added to your current EcoCredits.",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff4D6475)),
                ),
              ],
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
            child: EcoCredtisPricing(
                LeadingText: '10',
                text: "- £1",
                title: 'EcoCredits',
                icon: Icons.done,
                iconColor:
                    currentIndex == 0 ? const Color(0xffF89554) : Colors.white),
          ),
          InkWell(
            onTap: () {
              setState(() {
                currentIndex = 1;
              });
            },
            child: EcoCredtisPricing(
                LeadingText: '20',
                text: "- £2",
                title: 'EcoCredits',
                icon: Icons.done,
                iconColor:
                    currentIndex == 1 ? const Color(0xffF89554) : Colors.white),
          ),
          InkWell(
            onTap: () {
              setState(() {
                currentIndex = 2;
              });
            },
            child: EcoCredtisPricing(
                LeadingText: '30',
                text: "- £3",
                title: 'EcoCredits',
                icon: Icons.done,
                iconColor:
                    currentIndex == 2 ? const Color(0xffF89554) : Colors.white),
          ),
          InkWell(
            onTap: () {
              setState(() {
                currentIndex = 3;
              });
            },
            child: EcoCredtisPricing(
                LeadingText: '40',
                text: "- £4",
                title: 'EcoCredits',
                icon: Icons.done,
                iconColor:
                    currentIndex == 3 ? const Color(0xffF89554) : Colors.white),
          ),
          InkWell(
            onTap: () {
              setState(() {
                currentIndex = 4;
              });
            },
            child: EcoCredtisPricing(
                LeadingText: '50',
                text: "- £5",
                title: 'EcoCredits',
                icon: Icons.done,
                iconColor:
                    currentIndex == 4 ? const Color(0xffF89554) : Colors.white),
          ),
          const SizedBox(
            height: 130,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: PrimaryButton(
              title: 'Buy Now',
              onPressed: () {
                setState(() {
                  _showAlertDialog(context); // Show the alert dialog

                  const Text('Alert Dialog');
                });
              },
              primary: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
