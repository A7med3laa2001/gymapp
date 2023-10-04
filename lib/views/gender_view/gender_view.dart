import 'package:flutter/material.dart';
import 'package:gymapp/constants/colors_gym.dart';

import 'widgets/gender_view_body.dart';

class GenderView extends StatelessWidget {
  const GenderView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: const GenderViewBody(),
      ),
    );
  }
}
