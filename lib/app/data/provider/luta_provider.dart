import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:taisen/app/data/model/arena_model.dart';

class LutaProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl =
        kDebugMode ? 'http://172.18.149.23:4000/api/v1' : 'algo';
  }

  getArena(int id) async {
    final r = await get(
      '/arenas/$id',
      headers: {"content-type": "application/json"},
    );
    // print(r.body['data']);

    return arenaToJson(r.body['data']);
  }

  getArenas() async {
    final r = await get(
      '/arenas',
      headers: {"content-type": "application/json"},
    );
    // print(r.body['data']);

    return arenasFromJson(r.body['data']);
  }
}
