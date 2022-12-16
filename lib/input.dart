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
                children: <Widget>[
                  Text(
                    'Height',
                    style: kableStyle,
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
        ],
      ),
    );
  }
}
