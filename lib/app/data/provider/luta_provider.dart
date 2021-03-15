import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class LutaProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl =
        kDebugMode ? 'http://172.19.175.154:4000/api/v1' : 'algo';
  }

  getArena(int id) async {
    final r = await get(
      '/arenas/$id',
      headers: {"content-type": "application/json"},
    );
    // print(r.body['data']);
    return r.body['data'];
  }

  getArenas() async {
    final r = await get(
      '/arenas',
      headers: {"content-type": "application/json"},
    );
    // print(r.body['data']);
    return r.body['data'];
  }
}
