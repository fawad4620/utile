import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialButton extends StatelessWidget {
  final String image;

  final String title;

  final Function()? onPressed;
  const SocialButton({
    super.key,
    this.onPressed,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              SizedBox(
                height: 16,
                width: 16,
                child: Image.asset(image),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    title,
                    style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: const Color(0xffFFFFFF)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
