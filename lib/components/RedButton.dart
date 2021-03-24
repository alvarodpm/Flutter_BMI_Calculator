import 'package:flutter/material.dart';

import '../constants.dart';

class RedButton extends StatelessWidget {
  RedButton({@required this.message, @required this.onTap});
  Function onTap;
  String message;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        child: Center(
          child: Text(
            message,
            style: kButtonTextStyle,
          ),
        ),
        color: kCustomRedColor,
        margin: EdgeInsets.only(top: 10),
      ),
    );
  }
}
