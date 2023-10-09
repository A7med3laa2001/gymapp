import 'package:flutter/material.dart';
import 'package:gymapp/Constants/colors_gym.dart';

import 'widgets/verification_view_body.dart';

class VerificationView extends StatelessWidget {
  const VerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: const VerificationViewBody(),
      ),
    );
  }
}
