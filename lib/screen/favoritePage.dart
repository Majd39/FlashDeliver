import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Favorite'),
      ),
      body: Center(
        child: Text(
          'Favorite Page Content',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}