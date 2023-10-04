import 'package:flutter/material.dart';
import 'package:gymapp/constants/colors_gym.dart';
import 'package:gymapp/shared/widgets/custom_next_button.dart';
import 'package:gymapp/views/age_view/age_view.dart';

class GenderViewBody extends StatefulWidget {
  const GenderViewBody({super.key});

  @override
  State<GenderViewBody> createState() => _GenderViewBodyState();
}

class _GenderViewBodyState extends State<GenderViewBody> {
  bool isClicked = false;

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
              'TELL US ABOUT YOURSELF!',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: const Text(
                textAlign: TextAlign.center,
                'TO GIVE YOU A BETTER EXPERIENCE WE NEED TO KNOW YOUR GENDER',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
            const Spacer(
              flex: 3,
            ),
            GestureDetector(
              onTap: () {
                isClicked = !isClicked;
                setState(() {});
              },
              child: CustomGenderSelection(
                isClicked: !isClicked,
                icon: Icons.male_rounded,
                gender: 'Male',
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                isClicked = !isClicked;
                setState(() {});
              },
              child: CustomGenderSelection(
                isClicked: isClicked,
                icon: Icons.female_rounded,
                gender: 'Female',
              ),
            ),
            const Spacer(
              flex: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: CustomNextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const AgeView();
                      }));
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomGenderSelection extends StatelessWidget {
  const CustomGenderSelection({
    super.key,
    required this.isClicked,
    required this.icon,
    required this.gender,
  });

  final bool isClicked;
  final IconData icon;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: isClicked == true ? primaryColor : genderSelectionColor,
      radius: 70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            icon,
            size: 70,
            color: isClicked == true ? Colors.black : Colors.white,
          ),
          Text(
            gender,
            style: TextStyle(
              color: isClicked == true ? Colors.black : Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
