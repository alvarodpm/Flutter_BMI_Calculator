import 'package:flutter/material.dart';

import '../constants.dart';

class CardIconContent extends StatelessWidget {
  final IconData icono;
  final String gender;

  CardIconContent({@required this.gender, @required this.icono});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          this.icono,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          this.gender,
          style: kCardTextStyle,
        ),
      ],
    );
  }
}
