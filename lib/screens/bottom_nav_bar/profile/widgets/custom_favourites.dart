import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFavourites extends StatelessWidget {
  final String image;
  final String text;
  final String title;
  final String subtitle;
  final IconData? icon;
  final Function()? onPressed;
  const CustomFavourites({
    Key? key,
    required this.image,
    required this.text,
    required this.title,
    this.icon,
    required this.subtitle,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      width: double.infinity,
      child: InkWell(
        onTap: onPressed,
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  height: 100.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 25,
                ),
                Text(
                  text,
                  style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff00213A)),
                ),
                const SizedBox(height: 3),
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff4D6475)),
                ),
                const SizedBox(height: 3),
                Text(
                  subtitle,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff4D6475)),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios,
              size: 20,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
