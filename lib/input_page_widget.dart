import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constans.dart';
import 'card_item.dart';
import 'custom_round_icon_button.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kInactiveCardColor;
  Color feMaleCardColor = kInactiveCardColor;
  int height = 180;
  int weight = 60;
  int age = 15;
  void updateColor(Gender gender) {
    if (gender == Gender.male) {
      if (maleCardColor == kInactiveCardColor) {
        maleCardColor = kActiveCardColor;
        feMaleCardColor = kInactiveCardColor;
      } else {
        maleCardColor = kInactiveCardColor;
      }
    }
    if (gender == Gender.female) {
      if (feMaleCardColor == kInactiveCardColor) {
        feMaleCardColor = kActiveCardColor;
        maleCardColor = kInactiveCardColor;
      } else {
        feMaleCardColor = kInactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('CALCULATOR')),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(Gender.male);
                        });
                      },
                      child: CardItem(
                        color: maleCardColor,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.mars,
                              size: 80,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('MALE', style: kLabelTextStyle)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(Gender.female);
                        });
                      },
                      child: CardItem(
                        color: feMaleCardColor,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.venus,
                              size: 80,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('FEMALE', style: kLabelTextStyle)
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: CardItem(
                      color: Color(0xff1d1e33),
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'HEIGHT',
                            style: kLabelTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.ideographic,
                            children: <Widget>[
                              Text(height.toString(), style: kNumberTextStyle),
                              Text('cm', style: kLabelTextStyle)
                            ],
                          ),
                          Expanded(
                            child: SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                  activeTrackColor: Colors.white,
                                  overlayColor: Color(0x29eb1555),
                                  thumbColor: Color(0xffeb1555),
                                  inactiveTrackColor: Color(0xff8d8e98),
                                  thumbShape: RoundSliderThumbShape(
                                      enabledThumbRadius: 15),
                                  overlayShape: RoundSliderOverlayShape(
                                      overlayRadius: 30)),
                              child: Slider(
                                  onChanged: (double v) {
                                    setState(() {
                                      this.height = v.round();
                                    });
                                  },
                                  inactiveColor: Color(0xff8d8e98),
                                  value: height.toDouble(),
                                  min: 50.0,
                                  max: 200.0),
                            ),
                          )
//                        Slider(min:50, max: 150)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: CardItem(
                      color: Color(0xff1d1e33),
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'WEIGHT',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              CustomIconButton(
                                iconData: FontAwesomeIcons.plus,
                                onPress: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              CustomIconButton(
                                iconData: FontAwesomeIcons.minus,
                                onPress: () {
                                  setState(() {
                                    if(weight > 40){
                                      weight--;
                                    }
                                  });
                                },
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      child: CardItem(
                    color: Color(0xff1d1e33),
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CustomIconButton(
                              iconData: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                    age++;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            CustomIconButton(
                              iconData: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(() {
                                  if(age > 10){
                                    age--;
                                  }

                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              color: Color(0xffeb1555),
              width: double.infinity,
              height: 80,
            )
          ],
        ));
  }
}
