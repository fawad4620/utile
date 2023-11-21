import 'package:flutter/material.dart';

class CategoryButtons extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  const CategoryButtons(
      {super.key,
      required this.height,
      required this.width,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: const Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(75),
          boxShadow: [
            BoxShadow(
              blurRadius: 15,
              spreadRadius: 0,
              offset: const Offset(0, 1),
              color: const Color(0xff000000).withOpacity(0.06),
            )
          ],
        ),
        child: Center(
            child: Text(
          text,
          style: const TextStyle(
              fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),
        )),
      ),
    );
  }
}
