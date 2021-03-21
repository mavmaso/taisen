import 'package:get/get.dart';
import 'package:taisen/app/modules/home/home_controller.dart';

class HomePageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
