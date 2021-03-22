import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taisen/app/modules/home/home_controller.dart';

class Arena extends StatelessWidget {
  final HomeController c = Get.find();

  @override
  Widget build(context) {
    final count = Get.arguments;

    return Scaffold(
        body: Center(
            child: ElevatedButton(
                child: Text("${c.count}, $count, back"),
                onPressed: () => Get.back())));
  }
}
