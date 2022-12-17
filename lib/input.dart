import 'package:bmi_cal_flutter/calculatorFile.dart';
import 'package:bmi_cal_flutter/resultfile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constatntfile.dart';
import 'containerfile.dart';
import 'icontextfile.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedColor;
  int sliderHeight = 180;
  int sliderWeight = 80;
  int sliderAge = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: RepeatedContainerCode(
                    onPressed: () {
                      setState(() {
                        selectedColor = Gender.male;
                      });
                    },
                    containerColor: selectedColor == Gender.male
                        ? activeColor
                        : deActiveColor,
                    cardWidget: IconCode(
                      iconData: FontAwesomeIcons.male,
                      lable: 'Male',
                    ),
                  ),
                ),
                Expanded(
                  child: RepeatedContainerCode(
                    onPressed: () {
                      setState(() {
                        selectedColor = Gender.female;
                      });
                    },
                    containerColor: selectedColor == Gender.female
                        ? activeColor
                        : deActiveColor,
                    cardWidget: IconCode(
                      iconData: FontAwesomeIcons.female,
                      lable: 'Female',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: RepeatedContainerCode(
              containerColor: Color(0xff1d1e33),
              cardWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Height',
                    style: kableStyle,
                  ),
                  SizedBox(
                    height: 10.5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(sliderHeight.toString(), style: boldText),
                      Text('cm', style: smallText),
                    ],
                  ),
                  Slider(
                    value: sliderHeight.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    activeColor: Color(0xffeb1555),
                    inactiveColor: Color(0xff8d8e98),
                    onChanged: (double newValue) {
                      setState(() {
                        sliderHeight = newValue.round();
                      });
                    },
                  ),
                ],
              ),
              onPressed: () {
                setState(() {
                  print('asas');
                });
              },
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: RepeatedContainerCode(
                    containerColor: Color(0xff1d1e33),
                    cardWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Weight',
                          style: kableStyle,
                        ),
                        Text(
                          sliderWeight.toString(),
                          style: boldText,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                                iconData: FontAwesomeIcons.minus,
                                onPress: () {
                                  setState(() {
                                    sliderWeight--;
                                  });
                                }),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                                iconData: FontAwesomeIcons.plus,
                                onPress: () {
                                  setState(() {
                                    sliderWeight++;
                                  });
                                }),
                          ],
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  child: RepeatedContainerCode(
                    containerColor: Color(0xff1d1e33),
                    cardWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Age',
                          style: kableStyle,
                        ),
                        Text(
                          sliderAge.toString(),
                          style: boldText,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                                iconData: FontAwesomeIcons.minus,
                                onPress: () {
                                  setState(() {
                                    sliderAge--;
                                  });
                                }),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                                iconData: FontAwesomeIcons.plus,
                                onPress: () {
                                  setState(() {
                                    sliderAge++;
                                  });
                                }),
                          ],
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              CalculatorBrain cb = CalculatorBrain(sliderHeight, sliderWeight);

              Navigator.push(context, MaterialPageRoute(builder: (context) => ResultScreen(cb.calculation(),cb.getRes(),cb.getSug())));
            },
            child: Container(
              color: Color(0xffeb1555),
              margin: EdgeInsets.all(14.5),
              width: double.infinity,
              height: 60.0,
              child: Center(
                child: Text(
                  'Calcuate',
                  style: TextStyle(
                      color: Colors.white, fontSize: 26.0, fontFamily: 'Sans'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  late final IconData iconData;
  late final void Function() onPress;

  RoundIconButton({required this.iconData, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(iconData),
      onPressed: onPress,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(height: 56.0, width: 56.0),
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
    );
  }
}
