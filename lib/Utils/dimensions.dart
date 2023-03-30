import 'package:get/get.dart';

class Dimensions{

  //screen height = 816, screen width = 432
  static double screenHeight = Get.height;
  static double screenWidth = Get.width;

  //dynamic height & width
  static double height15 = screenHeight/54.4;
  static double height20 = screenHeight/40.8;
  static double height30 = screenHeight/27.2;
  static double height40 = screenHeight/20.4;
  static double height75 = screenHeight/10.88;

  //dynamic radius

  static double radius20 = screenHeight/20.8;
  static double radius15 = screenHeight/54.4;

  //dynamic text size
  static double textSize50 = screenHeight/16.32;
  static double textSize20 = screenHeight/40.8;
}