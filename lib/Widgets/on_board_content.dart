import 'package:flutter/material.dart';
import 'package:gymapp/Constants/colors_gym.dart';

class OnBoardContent extends StatelessWidget {
  const OnBoardContent({
    super.key,
    required this.image,
    required this.description,
    required this.descriptionContinue,
  });

  final String image, description, descriptionContinue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            height: 500,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.fitWidth)),
            child: Text('')),
        SizedBox(
          height: 20,
        ),
        buildText(text: description),
        buildText(text: descriptionContinue),
      ],
    );
  }

  Text buildText({String? text}) {
    return Text(
      text!,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24,
        color: fontTextColor,
      ),
      textAlign: TextAlign.center,
    );
  }
}
