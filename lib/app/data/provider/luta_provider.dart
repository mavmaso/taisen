import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:taisen/app/data/model/arena_model.dart';

class LutaProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = kDebugMode
        ? 'http://172.19.4.198:4000/api/v1'
        : 'https://server.com/api/v1';
  }

  getArena(int id) async {
    final r = await get(
      '/arenas/$id',
      headers: {"content-type": "application/json"},
    );

    final ArenaModel arena = ArenaModel.fromMap(r.body['data']['arena']);

    return arena;
  }

  getArenas() async {
    final r = await get(
      '/arenas',
      headers: {"content-type": "application/json"},
    );
    // print(r.body['data']);
    final List<ArenaModel> arenas =
        List<ArenaModel>.from(r.body['data'].map((x) => ArenaModel.fromMap(x)));

    print(arenas);

    return arenas;
  }
}
