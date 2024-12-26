
import 'package:flutter/material.dart';

class CategoriesView extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {'name': 'Fruits', 'image':'assets/frute.png' },
    {'name': 'Vegetables', 'image': 'assets/vegetables.png'},
    {'name': 'Grocery', 'image': 'assets/grosory.png'},
    {'name': 'Beverages', 'image': 'assets/furneture.png'},
        {'name': 'cloth', 'image': 'assets/cloth.png'},
        {'name': 'Caffe', 'image': 'assets/caffe.png'},

  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(16.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 1.0,
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.grey[900],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(categories[index]['image'],),
                const SizedBox(height: 8.0),
                Text(
                  categories[index]['name'],
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
