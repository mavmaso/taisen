import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
// import 'package:meta/meta.dart';

class HomeController extends GetxController {
  final repo;
  HomeController({@required this.repo});

  var count = 0.obs;
  var arenas = [].obs;

  increment() => count++;

  getAllArenas() async {
    await repo.getArenas().then((data) => arenas = data);
  }
}
