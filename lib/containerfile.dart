import 'package:flutter/cupertino.dart';

class RepeatedContainerCode extends StatelessWidget {
  // const RepeatedContainerCode({
  //   Key? key,
  // }) : super(key: key);
  RepeatedContainerCode(
      {required this.containerColor,
      required this.cardWidget,
      required this.onPressed});

  final Color containerColor;
  final Widget cardWidget;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(10.0),
        child: cardWidget,
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );
  }
}
