import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget
{

  ReuseableCard({this.colour, this.cardChild, this.tapped});

  final Color colour;
  final Widget cardChild;
  final Function tapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapped,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}