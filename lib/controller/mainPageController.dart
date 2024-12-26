import 'package:get/get.dart';

class MainPageController extends GetxController {
  // Reactive index for the BottomNavigationBar
  var currentIndex = 0.obs;

  // Change the current tab index
  void changeTab(int index) {
    currentIndex.value = index;
  }
}