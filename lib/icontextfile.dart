import 'package:flutter/cupertino.dart';

import 'constatntfile.dart';

class IconCode extends StatelessWidget {
  // const IconCode({
  //   Key? key,
  // }) : super(key: key);

  late final IconData iconData;
  late final String lable;

  IconCode({required this.iconData, required this.lable});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          lable,
          style: kableStyle,
        )
      ],
    );
  }
}