import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  String text;
  Color color;
  double size;

  BigText({Key? key, required this.text, this.color = const Color(0xFF3BBBE3), this.size = 24})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color,
      fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}
