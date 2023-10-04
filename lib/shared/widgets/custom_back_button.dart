import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: const CircleAvatar(
        radius: 30,
        backgroundColor: Color(0xff3a3a3c),
        child: Icon(
          Icons.arrow_back_rounded,
          color: Colors.white,
          size: 25,
        ),
      ),
    );
  }
}
