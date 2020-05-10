import 'package:flutter/material.dart';
import 'package:themefun/card_item.dart';

import 'calculate-button.dart';
import 'constans.dart';

class CalcPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RESULT'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text('Result is', style: kTitleTextStyle,),
            ),
          ),
          Expanded(
            flex: 5,
            child: CardItem(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('NORMAL', style: kResultTextStyle,),
                  Text('18.3', style: kBmiTextStyle,)
                ],
              ),
            ),
          ),
          CalculateButton(
            text: Text('RECALCULATE',style: kLargeButtonTextStyleSmaller),
            onTap: () {
              Navigator.pushNamed(context, '/calc-page');
            },
          )
        ],
      ),
    );
  }
}
