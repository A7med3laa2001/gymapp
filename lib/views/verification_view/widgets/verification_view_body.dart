import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:gymapp/Constants/colors_gym.dart';
import 'package:gymapp/shared/widgets/custom_default_button.dart';

class VerificationViewBody extends StatefulWidget {
  const VerificationViewBody({super.key});

  @override
  State<VerificationViewBody> createState() => _VerificationViewBodyState();
}

class _VerificationViewBodyState extends State<VerificationViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 25, right: 25, bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: fontTextColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, bottom: 15),
            child: Text(
              'VERIFICATION',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: fontTextColor,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "CHECK YOUR EMAIL.WE'VE SENT YOU\nTHE PIN AT YOUR EMAIL.",
            style: TextStyle(
              color: fontTextColor,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: VerificationCode(
              length: 6,
              onCompleted: (String value) {},
              onEditing: (bool value) {},
              keyboardType: TextInputType.number,
              itemSize: 45,
              margin: const EdgeInsets.symmetric(horizontal: 5),
              textStyle: TextStyle(
                  color: fontTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
              cursorColor: primaryColor,
              padding: const EdgeInsets.symmetric(vertical: 15),
              underlineWidth: 2,
              underlineColor: primaryColor,
              digitsOnly: true,
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          const Spacer(),
          Center(
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Did you receive any code?',
                style: TextStyle(color: primaryColor, fontSize: 18),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: CustomDefaultButton(text: 'Verify', onPressed: () {}),
          )
        ],
      ),
    );
  }
}
