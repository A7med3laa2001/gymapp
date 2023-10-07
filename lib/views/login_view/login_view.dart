import 'package:flutter/material.dart';
import 'package:gymapp/Constants/colors_gym.dart';
import 'package:gymapp/shared/widgets/custom_login_icon.dart';
import 'package:gymapp/shared/widgets/custom_next_button.dart';
import 'package:gymapp/shared/widgets/custom_text_field.dart';
import 'package:gymapp/shared/widgets/custom_underline_text_button.dart';
import 'package:gymapp/views/signup_view/signup_view.dart';

import '../forget_password_view/forget_password.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLogin = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 500,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/person.png'),
                            fit: BoxFit.fitWidth)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.32,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomUnderLineTextButton(
                                text: 'Login',
                                onTap: () {
                                  isLogin = !isLogin;
                                  setState(() {});
                                },
                                lineWidth: isLogin == false ? 0 : 45,
                              ),
                              CustomUnderLineTextButton(
                                onTap: () {
                                  isLogin = !isLogin;
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignUpPage()));
                                  setState(() {});
                                },
                                text: 'Sign up',
                                lineWidth: isLogin == false ? 0 : 60,
                              ),
                            ],
                          ),
                        ),
                        CircleAvatar(
                          child: Image.asset('assets/images/profile.png'),
                        )
                      ],
                    ),
                  ),
                  const Positioned(
                    left: 25,
                    bottom: 60,
                    child: Text(
                      'WELCOME BACK,\nSARAH',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 45,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 2, top: 10),
                child: Column(
                  children: [
                    const CustomTextField(
                      text: "Email",
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const CustomTextField(
                      text: "Password",
                      suffixIcon: Icon(
                        Icons.remove_red_eye_rounded,
                        color: Color(0xff3a3a3c),
                        size: 25,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10, bottom: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ForgetPassword()));
                            },
                            child: Text(
                              'Forgot Password',
                              style: TextStyle(
                                color: primaryColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            CustomLoginIcon(
                              icon: 'assets/icons/apple-icon.png',
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            CustomLoginIcon(
                              icon: 'assets/icons/google-icon.png',
                            ),
                          ],
                        ),
                        CustomButton(
                          text: 'Login',
                          onPressed: () {},
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
