import 'package:flutter/material.dart';

class PriceButton extends StatefulWidget {
  final String text;
  final String textTwo;
  final double height;
  final double width;

  const PriceButton({
    super.key,
    required this.text,
    required this.height,
    required this.width,
    required this.textTwo,
  });

  @override
  State<PriceButton> createState() => _PriceButtonState();
}

class _PriceButtonState extends State<PriceButton> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          setState(() {
            currentIndex = 0;
          });
        },
        child: Row(children: [
          Container(
            height: 36,
            width: 95,
            decoration: BoxDecoration(
                color: currentIndex == 0
                    ? const Color(0xffF89554)
                    : const Color(0xffFFFFFF),
                border: Border.all(
                  color: currentIndex == 0 ? Colors.white : Colors.grey,
                ),
                borderRadius: BorderRadius.circular(6)),
            child: Center(
              child: Text(
                widget.textTwo,
                style: TextStyle(
                  color: currentIndex == 0 ? Colors.white : Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          InkWell(
            onTap: () {
              setState(() {
                currentIndex = 1;
              });
            },
            child: Row(
              children: [
                Container(
                  height: 36,
                  width: 95,
                  decoration: BoxDecoration(
                      color: currentIndex == 1
                          ? const Color(0xffF89554)
                          : const Color(0xffFFFFFF),
                      border: Border.all(
                        color: currentIndex == 1 ? Colors.white : Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(6)),
                  child: Center(
                    child: Text(
                      widget.text,
                      style: TextStyle(
                        color: currentIndex == 1 ? Colors.white : Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ]));
  }
}
