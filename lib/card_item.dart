import 'package:flutter/material.dart';
class CardItem extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  CardItem({@required this.color, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: this.color,
        ));
  }
}