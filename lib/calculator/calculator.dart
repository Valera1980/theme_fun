import 'dart:math';
import 'package:flutter/cupertino.dart';

class Calculator {
  final int weight;
  final int height;
  double _bmi;
  Calculator({this.height, this.weight}){
    assert(height != 0);
  }
  String calc() {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult() {
    if(_bmi >=25){
      return 'Overweight';
    } else if( _bmi > 18){
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }
  String getAdvancedComment() {
    if(_bmi >=25){
      return 'You have a higher than normal body weight. Try to exercise more';
    } else if( _bmi > 18){
      return 'You have a normal body weight';
    } else {
      return 'You have a lower than normal body weight. Try to eat a bit more';
    }
  }
}