import 'package:get/get.dart';

class Myhomepagecontroller extends GetxController {
  // Reactive tab index
  var currentIndex = 0.obs;

  // Update the tab index
  void changeTab(int index) {
    currentIndex.value = index;
  }
}
