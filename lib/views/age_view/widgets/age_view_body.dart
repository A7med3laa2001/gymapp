import 'package:flutter/material.dart';
import 'package:gymapp/constants/colors_gym.dart';
import 'package:gymapp/shared/widgets/custom_back_button.dart';
import 'package:gymapp/shared/widgets/custom_next_button.dart';
import 'package:numberpicker/numberpicker.dart';

class AgeViewBody extends StatefulWidget {
  const AgeViewBody({super.key});

  @override
  State<AgeViewBody> createState() => _AgeViewBodyState();
}

class _AgeViewBodyState extends State<AgeViewBody> {
  int _currentValue = 25;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 2,
            ),
            const Text(
              'HOW OLD ARE YOU?',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              textAlign: TextAlign.center,
              'THIS HELPS US CREATE YOUR PERSONALIZED PLAN',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            const Spacer(
              flex: 3,
            ),
            NumberPicker(
              selectedTextStyle: const TextStyle(
                fontSize: 50,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
              textStyle: const TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.w300,
              ),
              itemHeight: 80,
              itemCount: 3,
              decoration: BoxDecoration(
                  border: Border.symmetric(
                      horizontal: BorderSide(
                color: primaryColor,
                width: 3,
              ))),
              value: _currentValue,
              minValue: 0,
              maxValue: 100,
              onChanged: (value) => setState(() => _currentValue = value),
            ),
            const Spacer(
              flex: 3,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomBackButton(),
                  CustomNextButton(
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
