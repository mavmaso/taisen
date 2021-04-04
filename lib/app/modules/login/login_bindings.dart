import 'package:get/get.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    // Get.lazyPut< LoginController>(() => LoginController(
    //   repository: MyRepository(MyApiGetConnect())));
  }
}
