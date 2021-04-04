import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taisen/app/modules/arena/arena_page.dart';
import 'package:taisen/app/modules/home/home_controller.dart';
import 'package:taisen/app/modules/login/login_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(context) {
    // Instantiate your class using Get.put() to make it available for all "child" routes there.
    final HomeController c = Get.put(HomeController());

    return Scaffold(
        // Use Obx(()=> to update Text() whenever count is changed.
        appBar: AppBar(title: Text("大戦 Alpha 0.1")),
        body: Column(
          children: [
            Center(
                child: ElevatedButton(
                    child: Text("Go to Other"),
                    onPressed: () => Get.to(Arena()))),
            Center(
              child: Obx(() => Text("N: ${c.count}")),
            ),
            Center(
              child: ElevatedButton(
                child: Text("Pagina de Login"),
                onPressed: () => Get.to(
                  LoginPage(),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add), onPressed: c.increment));
  }
}
