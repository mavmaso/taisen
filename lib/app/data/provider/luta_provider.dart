import 'package:get/get.dart';

class LutaProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'http://localhost:4000/api/v1/';
  }

  Future<Response> getArena(int id) async {
    final r = await get('arenas/$id');
    print(r);
    return r;
  }
}
