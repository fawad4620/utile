import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCardPostedAdsDelete extends StatelessWidget {
  final String image;
  final String text;
  final String subtile;
  final child;
  final String title;
  final Function()? onPressed;
  final String Category;

  const CustomCardPostedAdsDelete({
    Key? key,
    required this.image,
    required this.text,
    required this.title,
    required this.Category,
    required this.subtile,
    this.onPressed,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
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
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                text,
                style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff00213A)),
              ),
              const SizedBox(height: 5),
              Text(
                title,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff4D6475)),
              ),
              const SizedBox(height: 3),
              Text(
                subtile,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff4D6475)),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const Text(
                    "Category:",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff4D6475)),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    Category,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff4D6475)),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          Padding(padding: const EdgeInsets.only(top: 40), child: child),
        ],
      ),
    );
  }
}
