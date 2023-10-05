import 'package:flutter/material.dart';
import 'package:gymapp/constants/colors_gym.dart';
import 'package:gymapp/views/gender_view/gender_view.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController pageController;

  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: IntroductionScreen(
          done: Text(
            'Start',
            style: TextStyle(
              color: primaryColor,
              fontSize: 20,
            ),
          ),
          onDone: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return const GenderView();
            }));
          },
          next: Icon(
            Icons.arrow_forward_rounded,
            color: primaryColor,
            size: 30,
          ),
          showSkipButton: true,
          skip: Text(
            'Skip',
            style: TextStyle(
              color: primaryColor,
              fontSize: 20,
            ),
          ),
          onSkip: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return const GenderView();
            }));
          },
          key: introKey,
          globalBackgroundColor: backgroundColor,
          autoScrollDuration: 3000,
          allowImplicitScrolling: true,
          animationDuration: 500,
          dotsDecorator: DotsDecorator(
            activeColor: primaryColor,
            activeSize: const Size(40, 4),
            size: const Size(12, 4),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)),
          ),
          pages: [
            PageViewModel(
                titleWidget: const Text(
                  'MEET YOUR COACH,',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                bodyWidget: const Text(
                  'START YOUR JOURNEY',
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                decoration: const PageDecoration(
                    bodyPadding: EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                    pageMargin: EdgeInsets.zero,
                    imagePadding: EdgeInsets.zero,
                    imageAlignment: Alignment.topCenter,
                    imageFlex: 2,
                    titlePadding: EdgeInsets.zero),
                image: Image.asset(
                  'assets/images/onboard1.png',
                  width: double.infinity,
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * 0.5,
                )),
            PageViewModel(
                titleWidget: const Text(
                  'CREATE A WORKOUT PLAN',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                bodyWidget: const Text(
                  'TO STAY FIT',
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                decoration: const PageDecoration(
                    bodyPadding: EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                    pageMargin: EdgeInsets.zero,
                    imagePadding: EdgeInsets.zero,
                    imageAlignment: Alignment.topCenter,
                    imageFlex: 2,
                    titlePadding: EdgeInsets.zero),
                image: Image.asset(
                  'assets/images/onboard2.png',
                  width: double.infinity,
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * 0.5,
                )),
            PageViewModel(
                titleWidget: const Text(
                  'ACTIONS IS THE',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                bodyWidget: const Text(
                  'KEY TO ALL SUCCESS',
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                decoration: const PageDecoration(
                    bodyPadding: EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                    pageMargin: EdgeInsets.zero,
                    imagePadding: EdgeInsets.zero,
                    imageAlignment: Alignment.topCenter,
                    imageFlex: 2,
                    titlePadding: EdgeInsets.zero),
                image: Image.asset(
                  'assets/images/onboard3.png',
                  width: double.infinity,
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * 0.5,
                )),
          ],
        ),
      ),
    );
  }
}
