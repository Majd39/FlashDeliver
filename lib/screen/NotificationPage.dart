import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Notification'),
      ),
      body: Center(
        child: Text(
          'Notification Page Content',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}

