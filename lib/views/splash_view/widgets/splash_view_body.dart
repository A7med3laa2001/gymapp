import 'package:flutter/material.dart';
import 'package:gymapp/constants/colors_gym.dart';
import 'package:gymapp/views/onboarding_view/onboarding_screen.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    _initializeApp();
  }

  void _initializeApp() async {
    await Future.delayed(const Duration(seconds: 5));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return const OnBoardingScreen();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/Mask group.png',
            ),
            const SizedBox(
              height: 15,
            ),
            Image.asset(
              'assets/images/Logo.png',
            ),
          ],
        ),
      ),
    );
  }
}
