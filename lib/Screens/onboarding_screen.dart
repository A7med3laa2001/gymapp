import 'package:flutter/material.dart';
import 'package:gymapp/Constants/colors_gym.dart';
import 'package:gymapp/Widgets/on_board_content.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: data.length,
                  controller: pageController,
                  itemBuilder: (context, index) => OnBoardContent(
                        image: data[index].image,
                        description: data[index].description,
                        descriptionContinue: data[index].descriptionContinue,
                      )),
            ),
          ],
        ),
      ),
    );
  }
}

final List<Onboard> data = [
  Onboard(
    image: 'assets/images/onboard1.png',
    description: 'MEET YOUR COACH,',
    descriptionContinue: 'START YOUR JOURNEY',
  ),
  Onboard(
    image: 'assets/images/onboard2.png',
    description: 'CREATE A WORKOUT PLAN',
    descriptionContinue: 'TO STAY FIT',
  ),
  Onboard(
    image: 'assets/images/onboard3.png',
    description: 'ACTIONS IS THE',
    descriptionContinue: 'KEY TO ALL SUCCESS',
  ),
];

class Onboard {
  final String image, description, descriptionContinue;

  Onboard({
    required this.image,
    required this.description,
    required this.descriptionContinue,
  });
}
