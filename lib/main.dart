import 'package:flutter/material.dart';

import 'views/gender_view/gender_view.dart';
import 'views/login_view/login_view.dart';
import 'views/onboarding_view/onboarding_screen.dart';

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
      home: const LoginPage(),
    );
  }
}
