import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.label, @required this.onTab});
  final String label;
  final Function onTab;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 10.0),
        color: kBottomactiveCardColor,
        width: double.infinity,
        height: 80.0,
        child: Text(
          label,
          style: kLargeButtonTextStyle,
        ),
      ),
    );
  }
}
