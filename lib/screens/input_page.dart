import 'package:bmi_calculator/brains/BMIBrain.dart';
import 'package:bmi_calculator/screens/ResultsPageArguments.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/CardIconContent.dart';
import '../components/MyCard.dart';
import '../components/RedButton.dart';
import '../components/RoundButton.dart';
import '../constants.dart';

enum Gender {
  Male,
  Female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  child: MyCard(
                    onPress: () {
                      setState(
                        () {
                          selectedGender = Gender.Male;
                        },
                      );
                    },
                    cardColor: selectedGender == Gender.Male
                        ? kCardDefaultColor
                        : kCardInactiveColor,
                    cardChild: CardIconContent(
                      gender: "MALE",
                      icono: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: MyCard(
                    onPress: () {
                      setState(
                        () {
                          selectedGender = Gender.Female;
                        },
                      );
                    },
                    cardColor: selectedGender == Gender.Female
                        ? kCardDefaultColor
                        : kCardInactiveColor,
                    cardChild: CardIconContent(
                      gender: "FEMALE",
                      icono: FontAwesomeIcons.venus,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  child: MyCard(
                    cardColor: kCardDefaultColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "HEIGHT",
                          style: kCardTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: kNumberTextStyle,
                            ),
                            Text(
                              "cm",
                              style: kCardTextStyle,
                            ),
                          ],
                        ),
                        Slider(
                          value: height.toDouble(),
                          min: 120,
                          max: 220,
                          activeColor: kCustomRedColor,
                          inactiveColor: kInactiveSliderColor,
                          onChanged: (double newHeight) {
                            setState(() {
                              this.height = newHeight.toInt();
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  child: MyCard(
                    cardColor: kCardDefaultColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: kCardTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButton(
                              onPress: () {
                                setState(
                                  () {
                                    this.weight++;
                                  },
                                );
                              },
                              buttonChild: Icon(
                                FontAwesomeIcons.plus,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundButton(
                              onPress: () {
                                setState(
                                  () {
                                    this.weight--;
                                  },
                                );
                              },
                              buttonChild: Icon(
                                FontAwesomeIcons.minus,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: MyCard(
                    cardColor: kCardDefaultColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: kCardTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButton(
                              onPress: () {
                                setState(
                                  () {
                                    this.age++;
                                  },
                                );
                              },
                              buttonChild: Icon(
                                FontAwesomeIcons.plus,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundButton(
                              onPress: () {
                                setState(
                                  () {
                                    this.age--;
                                  },
                                );
                              },
                              buttonChild: Icon(
                                FontAwesomeIcons.minus,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: RedButton(
              message: "CALCULATE",
              onTap: () {
                Navigator.pushNamed(
                  context,
                  "/results",
                  arguments: ResultsPageArguments(
                    brain: BMIBrain(weight: weight, height: height, age: age),
                  ),
                );
              },
            ),
            flex: 1,
          ),
        ],
      )),
    );
  }
}
