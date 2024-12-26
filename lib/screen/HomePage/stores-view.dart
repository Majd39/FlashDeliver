import 'package:flutter/material.dart';

class StoresView extends StatelessWidget {
  final List<Map<String, dynamic>> stores = [
    {'name': 'Abo Samer', 'location': 'Damascus, Al-Midan'},
    {'name': 'Big Five', 'location': 'Damascus, Al-Midan'},
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
      itemCount: stores.length,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.grey[900],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Image.network(
                    'https://via.placeholder.com/150',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  stores[index]['name'],
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
                Text(
                  stores[index]['location'],
                  style: TextStyle(color: Colors.grey, fontSize: 12.0),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
