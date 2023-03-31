import 'package:get/get.dart';

class HomePageController extends GetxController{
  final _tabIndex = 2.obs;
  var prepIndex = -1;


  get tabIndex => _tabIndex.value;

  set tabIndex(value) {
    _tabIndex.value = value;
  }

  updateIndex(int index){
    tabIndex = index;
  }

  updatePrepIndex(int index){
    prepIndex = index;
    update();
  }
}