import 'package:flutter/material.dart';
import 'package:gymapp/constants/colors_gym.dart';

import 'widgets/age_view_body.dart';

class AgeView extends StatelessWidget {
  const AgeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: const AgeViewBody(),
      ),
    );
  }
}
