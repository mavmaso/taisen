import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taisen/app/modules/arena/arena_page.dart';
import 'package:taisen/app/modules/home/home_controller.dart';
// import 'package:taisen/app/data/provider/luta_provider.dart';
// import 'package:taisen/core/get_client.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(context) {
    final HomeController c = Get.put(HomeController());
    // final getx = Get.put(GetClient());
    // final LutaProvider p = Get.put(LutaProvider(client: getx));
    // print(p.getArena(1));
    // print(p.getArenas());

    return Scaffold(
        appBar: AppBar(title: Text("大戦 Alpha 0.1")),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  child: Text("Go to Other"), onPressed: () => Get.to(Arena())),
              Obx(() => Text("N: ${c.count}")),
              // Text(p.getArenas())
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add), onPressed: c.increment));
  }
}
