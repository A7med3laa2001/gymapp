import 'package:flutter/material.dart';
import 'package:gymapp/Constants/colors_gym.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 500,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/person.png'),
                        fit: BoxFit.fitWidth)),
                child: Text(''),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: fontTextColor,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          color: fontTextColor,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    Expanded(
                      child: CircleAvatar(
                        child: Image.asset('assets/images/profile.png'),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                left: 10,
                bottom: 120,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    buildText(text: 'WELCOME BACK,'),
                    buildText(text: 'SARAH'),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Text buildText({String? text}) {
    return Text(
      text!,
      style: TextStyle(
          fontSize: 50, color: fontTextColor, fontWeight: FontWeight.bold),
    );
  }
}
