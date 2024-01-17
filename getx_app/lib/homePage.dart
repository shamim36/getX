import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('getx Practice'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.defaultDialog(
              title: 'Delete Alert',
              titlePadding: EdgeInsets.all(10),
              titleStyle: TextStyle(
                color: Colors.black,
              ),
              middleText: 'Once Delete, you can\'t get back!',
              middleTextStyle: TextStyle(color: Colors.white),
              backgroundColor: Colors.green,
              radius: 4,
              textConfirm: 'Confirm',
              textCancel: 'Not Now',
              cancelTextColor: Colors.white,
              confirmTextColor: Colors.white,
              onCancel: () => {Get.back(closeOverlays: true)},
              onConfirm: () => {Get.back(closeOverlays: true)},
              barrierDismissible: false,

              content: Column(
                children: [
                  Text('Hello 1'),
                  Text('Hello 2'),
                  Text('Hello 3'),
                  Text('Hello 4'),
                ],
              ),
            );
          },
          child: Text('Click me'),
        ),
      ),
    );
  }
}
