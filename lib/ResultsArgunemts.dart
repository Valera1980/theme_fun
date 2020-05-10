import 'package:flutter/cupertino.dart';

class ResultsArguments {
  final String bmiResult;
  final String resultText;
  final String comment;
  ResultsArguments({
     @required this.bmiResult,
     @required this.resultText,
     @required this.comment
  });
}
