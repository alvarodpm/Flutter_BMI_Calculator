import 'package:bmi_calculator/screens/ResultsPage.dart';
import 'package:flutter/material.dart';

import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0321),
        scaffoldBackgroundColor: Color(0xFF0A0321),
      ),
      routes: {
        "/": (context) => InputPage(),
        "/results": (context) => ResultsPage(),
      },
      initialRoute: "/",
    );
  }
}
