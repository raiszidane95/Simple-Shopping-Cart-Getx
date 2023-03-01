import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class TotalPage extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());
  TotalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text('Total Items',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 20,
            ),
            Obx(() => Text(
                  '${controller.sum.toString()}',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () => Get.back(),
                child: Text(
                  'Go Back',
                  style: TextStyle(
                      color: Colors.blue.shade700,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
