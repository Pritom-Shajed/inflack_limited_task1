import 'package:get/get.dart';
import 'package:inflack_limited/Controller/home_page_controller.dart';

class InitialBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(HomePageController());
  }

}