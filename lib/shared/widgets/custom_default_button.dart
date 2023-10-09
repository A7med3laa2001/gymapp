import 'package:flutter/material.dart';
import 'package:gymapp/Constants/colors_gym.dart';

class CustomDefaultButton extends StatelessWidget {
  const CustomDefaultButton(
      {super.key, required this.text, required this.onPressed});
  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: primaryColor,
      minWidth: double.infinity,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25))),
      padding: const EdgeInsets.symmetric(
        vertical: 15,
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 22,
        ),
      ),
    );
  }
}
