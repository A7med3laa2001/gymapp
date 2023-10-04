import 'package:flutter/material.dart';

import 'Screens/splash_view/widgets/splash_view_body.dart';

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
      ),
      home: const SplashViewBody(),
    );
  }
}