import 'package:flutter/material.dart';
import 'package:inflack_limited/Utils/dimensions.dart';

class CustomTextField extends StatelessWidget {
  String hintText;
  CustomTextField({Key? key, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(Dimensions.radius8)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(Dimensions.radius8)),
      ),
    );
  }
}
