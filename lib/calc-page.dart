import 'package:flutter/material.dart';
import 'package:themefun/card_item.dart';

import 'ResultsArgunemts.dart';
import 'calculate-button.dart';
import 'constans.dart';

class CalcPage extends StatelessWidget {
//  final String bmiResult;
//  final String resultText;
//  final String comment;
//  CalcPage({
//    @required this.bmiResult,
//    @required this.resultText,
//    @required this.comment
//  });

  @override
  Widget build(BuildContext context) {
    final ResultsArguments args = ModalRoute.of(context).settings.arguments;

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
                  Text(args.resultText, style: kResultTextStyle,),
                  Text(args.bmiResult, style: kBmiTextStyle,),
                  Text(args.comment, style: kLabelTextStyle,)
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
