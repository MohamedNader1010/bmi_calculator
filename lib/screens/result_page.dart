import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiCalc,
      @required this.resultText,
      @required this.adviceText});

  final String bmiCalc;
  final String resultText;
  final String adviceText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'your result',
                  style: kLabelYourResult,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: ReusableWidgets(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText,
                      style: kLabelResult,
                    ),
                    Text(
                      bmiCalc,
                      style: kBMITextStyle,
                    ),
                    Text(
                      adviceText,
                      style: kBMILabelTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    BottomButton(
                      label: 'RE-CALCULATE',
                      onTab: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
