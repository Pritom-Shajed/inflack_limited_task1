import 'package:flutter/material.dart';
import 'package:inflack_limited/Utils/dimensions.dart';

class MediumText extends StatelessWidget {
  final String text;
  Color color;
  double? size = Dimensions.textSize14;
  TextDecoration textDecoration;
  FontWeight fontWeight;


  MediumText(
      {Key? key,
        required this.text,
        this.color = const Color(0xFF223e4b),
        this.size,
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
