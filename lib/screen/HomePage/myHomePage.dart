import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:languagproject/controller/myHomePageController.dart';
import 'package:languagproject/screen/HomePage/categories_view.dart';
import 'package:languagproject/screen/HomePage/products-view.dart';
import 'package:languagproject/screen/HomePage/stores-view.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Accessing the controller using GetX
    Myhomepagecontroller controller = Get.put(Myhomepagecontroller());

    // List of tab views
    final List<Widget> tabViews = [
      ProductsView(),
      CategoriesView(),
      StoresView(),
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: 
          
           Container(height: 25,width: 25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.orange,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person_2_outlined,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
        
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Image.asset(
              'assets/Delivery logo.png', // Replace with the path to your logo
              height: 40,
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Expanded(
                  
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search Stores",
                      hintStyle: TextStyle(color: Colors.grey),
                      fillColor: Colors.grey[900],
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: Icon(Icons.search, color: Colors.orange),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.filter_list,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          // Tab Bar
          Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () => controller.changeTab(0),
                  child: Column(
                    children: [
                      Text(
                        'Products',
                        style: TextStyle(
                          color: controller.currentIndex.value == 0
                              ? Colors.orange
                              : Colors.grey,
                        ),
                      ),
                      if (controller.currentIndex.value == 0)
                        Container(
                          margin: EdgeInsets.only(top: 4),
                          height: 3,
                          width: 50,
                          color: Colors.orange,
                        ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => controller.changeTab(1),
                  child: Column(
                    children: [
                      Text(
                        'Categories',
                        style: TextStyle(
                          color: controller.currentIndex.value == 1
                              ? Colors.orange
                              : Colors.grey,
                        ),
                      ),
                      if (controller.currentIndex.value == 1)
                        Container(
                          margin: EdgeInsets.only(top: 4),
                          height: 3,
                          width: 50,
                          color: Colors.orange,
                        ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => controller.changeTab(2),
                  child: Column(
                    children: [
                      Text(
                        'Stores',
                        style: TextStyle(
                          color: controller.currentIndex.value == 2
                              ? Colors.orange
                              : Colors.grey,
                        ),
                      ),
                      if (controller.currentIndex.value == 2)
                        Container(
                          margin: EdgeInsets.only(top: 4),
                          height: 3,
                          width: 50,
                          color: Colors.orange,
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          // Tab Views
          Expanded(
            child: Obx(
              () => tabViews[controller.currentIndex.value],
            ),
          ),
        ],
      ),
    );
  }
}
