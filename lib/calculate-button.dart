import 'package:flutter/material.dart';

import 'constans.dart';

class CalculateButton extends StatelessWidget {
  final Function onTap;
  final Text text;
  CalculateButton({@required this.onTap, @required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(child: text),
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 20.0),
        color: Color(0xffeb1555),
        width: double.infinity,
        height: 80,
      ),
    );
  }
}
