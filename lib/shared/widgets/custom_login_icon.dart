import 'package:flutter/material.dart';

class CustomLoginIcon extends StatelessWidget {
  const CustomLoginIcon({super.key, required this.icon});

  final String icon;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 28,
      backgroundColor: const Color(0xff3a3a3c),
      child: Image.asset(
        icon,
        width: 32,
      ),
    );
  }
}
