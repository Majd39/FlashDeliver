import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:languagproject/component/TextFormFieled.dart';
import 'package:languagproject/controller/myHomePageController.dart';

class MyHomePage extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Myhomepagecontroller controler= Get.put(Myhomepagecontroller());

    return Form(
      key: _formKey,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.orange,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person,
                color: Colors.black,
                size: 35,
              ),
            ),
          ),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [ SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(
                      child: TextFormFieled(
                        width: double.infinity,
                        onChanged: (value) {},
                        hintText: "Search",
                      ),
                    ),
                    const SizedBox(width: 8), // Add spacing between widgets
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.filter_frames,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16), // Space between rows or additional widgets
                // Add other widgets here if needed
              ],
            ),
          ),
        ),
      ),
    );
  }
}
