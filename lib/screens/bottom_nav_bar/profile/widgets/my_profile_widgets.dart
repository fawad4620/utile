import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyProfileWidgets extends StatelessWidget {
  final String text;
  final String subtext;
  const MyProfileWidgets({Key? key, required this.text, required this.subtext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                  leading: Text(
                    text,
                    style: const TextStyle(
                        color: Color(0xff00213A),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  trailing: Text(
                    subtext,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff00213A)),
                  )),
            ],
          ),
        ),
        Divider(
          thickness: 1,
          color: const Color(0xff426C794D).withOpacity(0.30),
        ),
      ],
    );
  }
}
