import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCategories extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function()? onpressed;
  final child;
  const CustomCategories(
      {Key? key,
      required this.text,
      this.onpressed,
      required this.icon,
      this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 28.w),
          child: Row(
            children: [
              Text(
                text,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff00213A)),
              ),
              const Spacer(),
              IconButton(
                onPressed: onpressed,
                icon: Icon(
                  icon,
                  size: 18,
                  color: const Color(0xff00213A),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        const Divider(
          thickness: 1,
          color: Color(0xff426C794D),
        )
      ],
    );
  }
}
