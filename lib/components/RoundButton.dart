import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  RoundButton({this.onPress, this.buttonChild});
  Function onPress;
  Widget buttonChild;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      child: buttonChild,
      elevation: 0,
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      shape: CircleBorder(),
      fillColor: kButtonsColor,
    );
  }
}
