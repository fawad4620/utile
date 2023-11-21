import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class CustomSearchField extends StatefulWidget {
  final double height;
  final double width;
  final String hintText;

  const CustomSearchField({
    Key? key,
    required this.height,
    required this.width,
    required this.hintText,
  }) : super(key: key);

  @override
  State<CustomSearchField> createState() => _CustomSearchFieldState();
}

class _CustomSearchFieldState extends State<CustomSearchField> {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            blurRadius: 15,
            spreadRadius: 0,
            offset: const Offset(0, 1),
            color: const Color(0xff000000).withOpacity(0.06),
          )
        ],
      ),
      child: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: TextField(
              style: const TextStyle(color: Colors.black),
              controller: _textController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: widget.hintText,
                prefixIcon: Icon(
                  Icons.search,
                  color: AppColors.blackColor,
                  size: 25,
                ),
              ))),
    );
  }
}
