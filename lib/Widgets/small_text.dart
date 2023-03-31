import 'package:flutter/material.dart';
import 'package:inflack_limited/Utils/colors.dart';
import 'package:inflack_limited/Utils/dimensions.dart';

class SmallText extends StatelessWidget {
  String text;
  Color color;
  double? size = Dimensions.textSize14;
  TextDecoration textDecoration;
  FontWeight fontWeight;


  SmallText(
      {Key? key,
      required this.text,
      this.color = Colors.grey,
      this.size,
      this.textDecoration = TextDecoration.none, this.fontWeight = FontWeight.w500})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        decoration: textDecoration,
        decorationColor: AppColor.mainColor1,
        fontSize: size,
        fontWeight: fontWeight
      ),
    );
  }
}
