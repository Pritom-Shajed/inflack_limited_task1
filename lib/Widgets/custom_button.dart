import 'package:flutter/material.dart';
import 'package:inflack_limited/Utils/dimensions.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  String text;
  CustomButton({Key? key, required this.onTap, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: Dimensions.height75,),
        alignment: Alignment.center,
        width: Dimensions.screenWidth,
        padding: EdgeInsets.all(Dimensions.height15),
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.radius15),
            gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color(0xFF27A7CF),
              Color(0xFF176E9E),
            ])),
        child:  Text(text, style: TextStyle(color: Colors.white, fontSize: Dimensions.textSize20),),
      ),
    );
  }
}
