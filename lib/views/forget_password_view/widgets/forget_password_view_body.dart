import 'package:flutter/material.dart';
import 'package:gymapp/Constants/colors_gym.dart';
import 'package:gymapp/shared/widgets/custom_default_button.dart';
import 'package:gymapp/shared/widgets/custom_text_field.dart';
import 'package:gymapp/views/login_view/login_view.dart';
import 'package:gymapp/views/verification_view/verification_view.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 30, left: 25, right: 25, bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: fontTextColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 15),
              child: Text(
                'FORGET PASSWORD?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: fontTextColor,
                ),
              ),
            ),
            Text(
              'ENTER YOUR INFORMATION BELOW OR\nLOGIN WITH A OTHER ACCOUNT',
              style: TextStyle(
                color: fontTextColor,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const CustomTextField(
              text: "Email",
            ),
            const Spacer(),
            Center(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Try another way',
                  style: TextStyle(color: primaryColor, fontSize: 18),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: CustomDefaultButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const VerificationView();
                  }));
                },
                text: 'Send',
              ),
            )
          ],
        ),
      ),
    );
  }
}
