import 'package:flutter/material.dart';
import 'package:gymapp/constants/colors_gym.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onPressed, required this.text});

  final Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130,
      child: MaterialButton(
        padding: const EdgeInsets.only(top: 8, bottom: 8, left: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: onPressed,
        color: primaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 22,
              ),
            ),
            const Icon(
              Icons.arrow_right_rounded,
              size: 40,
            )
          ],
        ),
      ),
    );
  }
}
