import 'package:flutter/material.dart';
import 'package:gymapp/Constants/colors_gym.dart';
import 'package:gymapp/shared/widgets/custom_next_button.dart';

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
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: fontTextColor,
              ),
            ),
            Text(
              'FORGET PASSWORD?',
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
              'ENTER YOUR INFORMATION BELOW OR\nLOGIN WITH A OTHER ACCOUNT',
              style: TextStyle(
                color: fontTextColor,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            const CustomTextField(
              text: "Email",
            ),
            SizedBox(
              height: 70,
            ),
            Center(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Try another way',
                  style: TextStyle(
                      color: primaryColor,
                      fontSize: 14
                  ),
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
