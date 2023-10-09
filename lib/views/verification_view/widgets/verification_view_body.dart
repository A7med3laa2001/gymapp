import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:gymapp/Constants/colors_gym.dart';
import 'package:gymapp/shared/widgets/custom_next_button.dart';
import 'package:gymapp/views/forget_password_view/forget_password_view.dart';

class VerificationBodyView extends StatefulWidget {
  const VerificationBodyView({super.key});

  @override
  State<VerificationBodyView> createState() => _VerificationBodyViewState();
}

class _VerificationBodyViewState extends State<VerificationBodyView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 35),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => ForgetPasswordViewBody()));
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: fontTextColor,
              ),
            ),
            Text(
              'VERIFICATION',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: fontTextColor,
              ),
            ),
            SizedBox(
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
            SizedBox(
              height: 10,
            ),
            VerificationCode(
              length: 6,
              onCompleted: (String value) {},
              onEditing: (bool value) {},
              underlineColor: primaryColor,
              keyboardType: TextInputType.number,
              isSecure: true,
              textStyle: TextStyle(
                color: fontTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 30
              ),
              cursorColor: fontTextColor,
            ),
            SizedBox(
              height: 70,
            ),
            Center(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Did you receive any code?',
                  style: TextStyle(color: primaryColor, fontSize: 14),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: CustomButton(
                text: 'Verify',
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
