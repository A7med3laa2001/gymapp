import 'package:flutter/material.dart';
import 'package:gymapp/constants/colors_gym.dart';

import 'widgets/weight_view_body.dart';

class WeightView extends StatelessWidget {
  const WeightView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: const WeightViewBody(),
    );
  }
}
