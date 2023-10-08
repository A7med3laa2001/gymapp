import 'package:flutter/material.dart';
import 'package:gymapp/constants/colors_gym.dart';
import 'package:gymapp/shared/widgets/custom_back_button.dart';
import 'package:gymapp/shared/widgets/custom_next_button.dart';
import 'package:gymapp/views/activity_level_view/activity_level_view.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:wheel_spinner/wheel_spinner.dart';

class GoalViewBody extends StatefulWidget {
  const GoalViewBody({super.key});

  @override
  State<GoalViewBody> createState() => _GoalViewBodyState();
}

class _GoalViewBodyState extends State<GoalViewBody> {
  int _currentValue = 160;

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
              "WHAT'S YOUR GOAL?",
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WheelSpinner(
                  childBuilder: (value) {
                    return Text('be better');
                  },
                )
                /*NumberPicker(
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
                  itemHeight: 85,
                  itemCount: 3,
                  decoration: BoxDecoration(
                      border: Border.symmetric(
                          horizontal: BorderSide(
                    color: primaryColor,
                    width: 3,
                  ))),
                  value: _currentValue,
                  minValue: 60,
                  maxValue: 250,
                  onChanged: (value) => setState(() => _currentValue = value),
                )*/,
                const Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: Text(
                    textAlign: TextAlign.center,
                    'cm',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
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
                  CustomButton(
                    text: 'Next',
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return const ActivityLevelView();
                      }));
                    },
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
