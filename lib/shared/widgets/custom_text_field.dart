import 'package:flutter/material.dart';
import 'package:gymapp/constants/colors_gym.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.text, this.suffixIcon});
  final String text;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        color: Colors.white,
        fontSize: 22,
      ),
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        hintText: text,
        contentPadding: const EdgeInsets.only(left: 10, top: 19, bottom: 18),
        hintStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white.withOpacity(0.4),
          ),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            color: primaryColor,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: primaryColor,
          ),
        ),
      ),
    );
  }
}
