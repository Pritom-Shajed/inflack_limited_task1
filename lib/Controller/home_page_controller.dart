import 'package:get/get.dart';

class HomePageController extends GetxController{
  final _currentIndex = 2.obs;


  get currentIndex => _currentIndex.value;

  set currentIndex(value) {
    _currentIndex.value = value;
  }

  updateIndex(int index){
    currentIndex = index;
  }
}