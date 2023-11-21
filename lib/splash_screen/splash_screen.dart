import 'package:flutter/material.dart';

import '../auth_screens/sign_up/sign_up_option_screen.dart';
import '../screens/app_image/app_images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add a delay and then navigate to the main screen
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SignUpOptionScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppImages.bgPicOne), fit: BoxFit.cover)),
          child: Center(
            child: SizedBox(
              height: 205.73,
              width: 188,
              child: Image.asset(AppImages.utilLogo),
            ),
          ),
        )
      ],
    ));
  }
}
