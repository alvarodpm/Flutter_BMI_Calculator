import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  MyCard({this.cardChild, @required this.cardColor, @required this.onPress});

  final Widget cardChild;
  final Color cardColor;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: this.cardColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
