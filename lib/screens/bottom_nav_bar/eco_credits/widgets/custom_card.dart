import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCard extends StatelessWidget {
  final String image;
  final String text;
  final String title;
  final String texts;
  final String subtitle;
  final String othertext;
  final Function()? onPressed;
  final IconData? icon;
  const CustomCard({
    Key? key,
    required this.image,
    required this.text,
    required this.title,
    required this.subtitle,
    this.icon,
    required this.othertext,
    required this.texts,
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
                      image: DecorationImage(
                          image: AssetImage(image), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15,
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
                      texts,
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff4D6475)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          subtitle,
                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff4D6475)),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          othertext,
                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff4D6475)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Column(
                children: const [
                  SizedBox(
                    height: 20,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
