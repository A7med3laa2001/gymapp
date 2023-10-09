import 'package:flutter/material.dart';
import 'package:gymapp/Constants/colors_gym.dart';

import 'widgets/forget_password_view_body.dart';

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({super.key});

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: const ForgetPasswordViewBody(),
    );
  }
}
