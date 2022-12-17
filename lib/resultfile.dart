import 'package:flutter/material.dart';

import 'constatntfile.dart';
import 'containerfile.dart';
import 'input.dart';

class ResultScreen extends StatelessWidget {

  ResultScreen(this.bmiRes, this.resText, this.bmiSug);
  String bmiRes;
  String resText;
  String bmiSug;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result..'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
            child: Center(
              child: Text(
                'Your Result',
                style: kableStyle,
              ),
            ),
          )),
          Expanded(
            flex: 5,
            child: RepeatedContainerCode(
              containerColor: activeColor,
              cardWidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resText.toUpperCase(),
                    style: TextStyle(
                        fontSize: 28.0,
                        fontFamily: 'Sans',
                        color: Colors.orange),
                  ),
                  Text(
                    bmiRes,
                    style: boldText,
                  ),
                  Text(
                    bmiSug.toUpperCase(),
                    style: TextStyle(
                      fontSize: 24.0,
                      fontFamily: 'Sans',
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              onPressed: () {},
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => InputPage()));
            },
            child: Container(
              color: Color(0xffeb1555),
              margin: EdgeInsets.all(14.5),
              width: double.infinity,
              height: 60.0,
              child: Center(
                child: Text(
                  'ReCalcuate',
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
