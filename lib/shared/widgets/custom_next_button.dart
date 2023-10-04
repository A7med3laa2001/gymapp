import 'package:flutter/material.dart';
import 'package:gymapp/constants/colors_gym.dart';

class CustomNextButton extends StatelessWidget {
  const CustomNextButton({super.key, this.onPressed});

  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130,
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 15,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: onPressed,
        color: primaryColor,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Next',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
              ),
            ),
            Icon(
              Icons.arrow_right_rounded,
              size: 40,
            )
          ],
        ),
      ),
    );
  }
}
