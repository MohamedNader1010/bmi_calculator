import 'package:flutter/material.dart';

class ReusableWidgets extends StatelessWidget {
  ReusableWidgets({@required this.colour, this.cardChild, this.onTab});

  final Color colour;
  final Widget cardChild;
  final Function onTab;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),
      ),
    );
  }
}
