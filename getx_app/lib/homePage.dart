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
            Get.bottomSheet(
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.green,
                child: Column(
                  children: [
                    Text('A'),
                    Text('B'),
                    Text('C'),
                    Text('D'),
                    Text('E'),
                    Text('F'),
                    ElevatedButton(
                      onPressed: () => {Get.back(closeOverlays: true)},
                      child: Text('Closed'),
                    ),
                  ],
                ),
              ),
              enableDrag: false,
              isDismissible: false,
              barrierColor: Colors.red[100],
            );
          },
          child: Text('Click me'),
        ),
      ),
    );
  }
}
