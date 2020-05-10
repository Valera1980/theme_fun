
import 'package:flutter/material.dart';

import 'calc-page.dart';
import 'input_page_widget.dart';

void main(){
  runApp(MainWidget());
}

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21)
        ) ,
        home: InputPage(),
        routes: {
          '/calc-page': (context) =>  MainWidget(),
          '/result-page': (context) =>  CalcPage(),
        },
    );
  }
}



