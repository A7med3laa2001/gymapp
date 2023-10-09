import 'package:flutter/material.dart';
import 'package:gymapp/constants/colors_gym.dart';
import 'package:gymapp/shared/widgets/custom_next_button.dart';
import 'package:gymapp/views/height_view/height_view.dart';
import 'package:vertical_weight_slider/vertical_weight_slider.dart';

class WeightViewBody extends StatefulWidget {
  const WeightViewBody({super.key});

  @override
  State<WeightViewBody> createState() => _WeightViewBodyState();
}

class _WeightViewBodyState extends State<WeightViewBody> {
  late WeightSliderController _controller;
  double _weight = 60.0;
  @override
  void initState() {
    super.initState();
    _controller = WeightSliderController(
        initialWeight: _weight, minWeight: 40, interval: 0.1);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
              "WHAT'S YOUR WEIGHT?",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              textAlign: TextAlign.center,
              'YOU CAN ALWAYS CHANGE THIS LATER',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            Container(
              height: 200.0,
              alignment: Alignment.center,
              child: Text(
                "${_weight.toStringAsFixed(1)} kg",
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
            VerticalWeightSlider(
              maxWeight: 300,
              isVertical: false,
              controller: _controller,
              decoration: PointerDecoration(
                width: 130.0,
                height: 3.0,
                largeColor: primaryColor,
                mediumColor: primaryColor,
                smallColor: primaryColor,
                gap: 30.0,
              ),
              onChanged: (double value) {
                setState(() {
                  _weight = value;
                });
              },
              indicator: Container(
                height: 3.0,
                width: 200.0,
                alignment: Alignment.centerLeft,
                color: primaryColor,
              ),
            ),
            const Spacer(
              flex: 3,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomButton(
                    text: 'Next',
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return const HeightView();
                      }));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
