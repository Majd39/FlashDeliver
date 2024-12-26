import 'package:flutter/material.dart';

class StorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Store'),
      ),
      body: Center(
        child: Text(
          'Store Page Content',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}