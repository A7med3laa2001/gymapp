import 'package:flutter/material.dart';
import 'package:gymapp/Constants/colors_gym.dart';
import 'package:gymapp/shared/widgets/custom_login_icon.dart';
import 'package:gymapp/shared/widgets/custom_next_button.dart';
import 'package:gymapp/shared/widgets/custom_text_field.dart';
import 'package:gymapp/shared/widgets/custom_underline_text_button.dart';
import 'package:gymapp/views/login_view/login_view.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                        image: AssetImage('assets/images/BackgroundSignup.png'),
                        fit: BoxFit.fitWidth,
                        alignment: Alignment.topCenter
                      ),
                    ),
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
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginPage()));
                                  setState(() {});
                                },
                                lineWidth: isLogin == false ? 0 : 45,
                              ),
                              CustomUnderLineTextButton(
                                onTap: () {
                                  isLogin = !isLogin;
                                  setState(() {});
                                },
                                text: 'Sign up',
                                lineWidth: isLogin == true ? 0 : 60,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 25,
                    bottom: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'HELLO ROOKIES,',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 45,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          '\nENTER YOUR INFORMATION BELOW OR \nLOGIN WITH A OTHER ACCOUNT',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 2),
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

                    const CustomTextField(
                      text: "Password again",
                      suffixIcon: Icon(
                        Icons.remove_red_eye_rounded,
                        color: Color(0xff3a3a3c),
                        size: 25,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Row(
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
                            text: 'Sign up',
                            onPressed: () {},
                          )
                        ],
                      ),
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
