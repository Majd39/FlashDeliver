import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:languagproject/screen/HomePage/myHomePage.dart';
import 'package:languagproject/screen/NotificationPage.dart';
import 'package:languagproject/screen/favoritePage.dart';
import 'package:languagproject/screen/storePage.dart';

class MainPageController extends GetxController {
  // Reactive index for the BottomNavigationBar
  var currentIndex = 0.obs;

  // Change the current tab index
  void changeTab(int index) {
    currentIndex.value = index;
  }
}

// MainPage with BottomNavigationBar
class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Initialize the controller
    MainPageController controller = Get.put(MainPageController());

    // Pages for each BottomNavigationBar item
    final List<Widget> pages = [
      MyHomePage(),
      FavoritePage(),
      StorePage(),
      NotificationPage(),
    ];

    return Scaffold(
      body: Obx(() => pages[controller.currentIndex.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentIndex.value,
          onTap: (index) => controller.changeTab(index),
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon:  SvgPicture.asset(
                'assets/Heart.svg',
                height: 30,
                width: 30,
                color: controller.currentIndex.value == 1
                    ? Colors.orange
                    : Colors.grey,
              ),
              label: 'Favorite',
            ),
            
             BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/Bag.svg',
                height: 30,
                width: 30,
                color: controller.currentIndex.value == 2
                    ? Colors.orange
                    : Colors.grey,
              ),
              label: 'Store',
            ),
             BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/Notification.svg',
                height: 30,
                width: 30,
                color: controller.currentIndex.value == 3
                    ? Colors.orange
                    : Colors.grey,
              ),
              label: 'Notification',
            ),
          ],
        ),
      ),
    );
  }
}




