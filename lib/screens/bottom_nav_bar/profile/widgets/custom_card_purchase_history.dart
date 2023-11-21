import 'package:flutter/material.dart';

class CustomCardPurchaseHistory extends StatelessWidget {
  final String image;
  final String text;
  final String title;
  final String titleTwo;
  final String subtitle;
  final String subtitleTwo;
  final IconData? icon;
  final Function()? onpressed;
  const CustomCardPurchaseHistory({
    Key? key,
    required this.image,
    required this.text,
    required this.title,
    required this.subtitle,
    this.icon,
    required this.subtitleTwo,
    this.onpressed,
    required this.titleTwo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
      child: SizedBox(
        height: 100,
        width: double.infinity,
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 12,
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
                  titleTwo,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff4D6475)),
                ),
                const SizedBox(
                  height: 5,
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
                      subtitleTwo,
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff4D6475)),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Icon(icon)
              ],
            )
          ],
        ),
      ),
    );
  }
}
