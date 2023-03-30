import 'package:flutter/material.dart';
import 'package:inflack_limited/Utils/dimensions.dart';

class CombinedText extends StatelessWidget {
  final String text1;
  final String text2;
  final FontWeight fontWeight1;
  final FontWeight fontWeight2;
  final double textSize1;
  final double textSize2;
  Color color1;
  Color color2;

  CombinedText({
    Key? key,
    required this.text1,
    required this.text2,
    required this.fontWeight1,
    required this.fontWeight2,
    required this.textSize1,
    required this.textSize2,
    this.color1 = Colors.white,
    this.color2 = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: <TextSpan>[
        TextSpan(
            text: text1,
            style: TextStyle(color: color1,fontWeight: fontWeight1, fontSize: textSize1)),
        TextSpan(
            text: text2,
            style: TextStyle(color: color2,fontSize: textSize2, fontWeight: fontWeight2)),
      ]),
    );
  }
}
