import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taisen/app/modules/home/home_controller.dart';

class Arena extends StatelessWidget {
  // You can ask Get to find a Controller that is being used by another page and redirect you to it.
  final HomeController c = Get.find();

  @override
  Widget build(context) {
    // Access the updated count variable
    return Scaffold(
        body: Center(
            child: ElevatedButton(
                child: Text("${c.count}, back"), onPressed: () => Get.back())));
  }
}
