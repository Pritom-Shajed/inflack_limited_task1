import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  String text;
  Color color;
  double size;
  TextDecoration textDecoration;
  FontWeight fontWeight;


  SmallText(
      {Key? key,
      required this.text,
      this.color = Colors.grey,
      this.size = 14,
      this.textDecoration = TextDecoration.none, this.fontWeight = FontWeight.w500})
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
