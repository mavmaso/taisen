import 'package:get/get.dart';
import 'package:taisen/app/data/provider/luta_provider.dart';
import 'package:taisen/app/modules/home/home_controller.dart';
import 'package:taisen/core/get_client.dart';

class HomePageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(repo: LutaProvider(client: GetClient())));
  }
}
