import 'package:flutter/material.dart';

class CustomProfileText extends StatelessWidget {
  final String text;
  final Function()? onPressed;

  const CustomProfileText({
    Key? key,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: ListTile(
            onTap: onPressed,
            leading: Text(
              text,
              style: const TextStyle(
                  color: Color(0xff00213A),
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 20,
              color: Color(0xff00213A),
            ),
          ),
        ),
        const Divider(
          thickness: 1,
        ),
      ],
    );
  }
}
