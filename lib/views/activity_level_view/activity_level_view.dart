import 'package:flutter/material.dart';
import 'package:gymapp/constants/colors_gym.dart';
import 'package:gymapp/views/activity_level_view/widgets/activity_level_view_body.dart';

class ActivityLevelView extends StatelessWidget {
  const ActivityLevelView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: const ActivityLevelViewBody(),
      ),
    );
  }
}
