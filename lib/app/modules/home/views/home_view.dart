import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'total_view.dart';

class HomeView extends GetView<HomeController> {
  final HomeController c = Get.put(HomeController());
  HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: const Text('Simple Shopping Cart'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Center(
                    child: Text(
                      'Books',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.amber.shade900),
                    child: IconButton(
                      onPressed: () => c.incrementBooks(),
                      icon: Icon(Icons.add, color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 20),
                  Obx(() => Text(
                        '${c.books.toString()}',
                        style: TextStyle(fontSize: 30),
                      )),
                  SizedBox(width: 20),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.amber.shade900),
                    child: IconButton(
                      onPressed: () => c.decrementBooks(),
                      icon: Icon(Icons.remove, color: Colors.white),
                    ),
                  ),
                ],
              ),
              /**
               * 
               * Pens Decrement
               * 
               */
              Row(
                children: [
                  Center(
                    child: Text(
                      'Pens',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.amber.shade900),
                    child: IconButton(
                      onPressed: () => c.incrementPens(),
                      icon: Icon(Icons.add, color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 20),
                  Obx(() => Text(
                        '${c.pens.toString()}',
                        style: TextStyle(fontSize: 30),
                      )),
                  SizedBox(width: 20),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.amber.shade900),
                    child: IconButton(
                      onPressed: () => c.decrementPens(),
                      icon: Icon(Icons.remove, color: Colors.white),
                    ),
                  ),
                ],
              ),
              /**
               *  Button Total Section
               */
              SizedBox(
                height: 25,
              ),
              Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.blue.shade700),
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(TotalPage());
                  },
                  child: Text(
                    'Total',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
