import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/ResultsPageArguments.dart';
import 'package:flutter/material.dart';

import '../components/MyCard.dart';
import '../components/RedButton.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ResultsPageArguments args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI CALCULATOR",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: Text(
                "Your results",
                style: kResultsTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: MyCard(
              cardColor: kCardDefaultColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    args.brain.getResults().toUpperCase(),
                    style: kResultNameTextStyle,
                  ),
                  Text(
                    args.brain.getBMI(),
                    style: kBMITextStyle,
                  ),
                  Text(
                    args.brain.getInterpretation(),
                    style: kBodyextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: RedButton(
              message: "RE-CALCULATE",
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
