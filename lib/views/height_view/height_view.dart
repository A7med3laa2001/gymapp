import 'package:flutter/material.dart';
import 'package:gymapp/constants/colors_gym.dart';
import 'package:gymapp/views/height_view/widgets/height_view_body.dart';

class HeightView extends StatelessWidget {
  const HeightView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: const HeightViewBody(),
      ),
    );
  }
}
