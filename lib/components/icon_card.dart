import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class IconWidget extends StatelessWidget {
  IconWidget({@required this.myIcon, @required this.label});

  final IconData myIcon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          myIcon,
          size: 60.0,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
