import 'package:flutter/material.dart';
import 'package:gymapp/views/onboarding_view/onboarding_screen.dart';
import 'package:gymapp/views/splash_view/splash_view.dart';

void main() {
  runApp(const GymApp());
}

class GymApp extends StatelessWidget {
  const GymApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DEV Muscles',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // useMaterial3: true,
      ),
      home: const SplashView(),
    );
  }
}
