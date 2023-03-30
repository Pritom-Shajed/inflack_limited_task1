import 'package:flutter/material.dart';

class MediumText extends StatelessWidget {
  String text;
  Color color;
  double size;
  TextDecoration textDecoration;
  FontWeight fontWeight;


  MediumText(
      {Key? key,
        required this.text,
        this.color = Colors.black54,
        this.size = 14,
        this.textDecoration = TextDecoration.none, this.fontWeight = FontWeight.bold})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          decoration: textDecoration,
          fontSize: size,
          fontWeight: fontWeight
      ),
    );
  }
}
