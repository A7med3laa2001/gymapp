import 'package:flutter/material.dart';
import 'package:gymapp/Constants/colors_gym.dart';

class CustomUnderLineTextButton extends StatelessWidget {
  const CustomUnderLineTextButton({
    super.key,
    this.onTap,
    required this.text,
    this.lineWidth = 45,
  });

  final Function()? onTap;
  final String text;
  final double lineWidth;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
                color: fontTextColor,
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5),
            width: lineWidth,
            height: 3,
            color: primaryColor,
          ),
        ],
      ),
    );
  }
}
