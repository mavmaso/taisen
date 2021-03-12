import 'package:get/get.dart';
// import 'package:meta/meta.dart';

class HomeController extends GetxController {
  var count = 0.obs;
  increment() => count++;
}
