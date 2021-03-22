import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taisen/app/modules/arena/arena_page.dart';
import 'package:taisen/app/modules/home/home_controller.dart';
// import 'package:taisen/app/data/provider/luta_provider.dart';
// import 'package:taisen/core/get_client.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(title: Text("大戦 Alpha 0.1")),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  child: Text("Go to Other"),
                  onPressed: () => Get.to(
                        Arena(),
                        arguments: controller.count,
                      )),
              Obx(() => Text("N: ${controller.count}")),
              Obx(() => Text("Arenas: ${controller.arenas.length}")),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add), onPressed: controller.increment));
  }
}
