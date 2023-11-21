import 'package:flutter/material.dart';

class CustomTakePhotos extends StatelessWidget {
  final String image;

  const CustomTakePhotos({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 107,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const SizedBox(
            height: 5,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 30,
              width: 30,
              decoration: const BoxDecoration(
                  color: Colors.white, shape: BoxShape.circle),
              child: const Icon(
                Icons.close,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
