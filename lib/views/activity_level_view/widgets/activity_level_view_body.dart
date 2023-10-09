import 'package:flutter/material.dart';
import 'package:gymapp/constants/colors_gym.dart';
import 'package:gymapp/shared/widgets/custom_next_button.dart';
import 'package:gymapp/views/signup_view/signup_view.dart';
import 'package:numberpicker/numberpicker.dart';

class ActivityLevelViewBody extends StatefulWidget {
  const ActivityLevelViewBody({super.key});

  @override
  State<ActivityLevelViewBody> createState() => _ActivityLevelViewBodyState();
}

class _ActivityLevelViewBodyState extends State<ActivityLevelViewBody> {
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
              textAlign: TextAlign.center,
              "YOUR REGULAR PHYSICAL ACTIVITY LEVEL?",
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
                ),
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
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomButton(
                    text: 'Next',
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return const SignUpPage();
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
