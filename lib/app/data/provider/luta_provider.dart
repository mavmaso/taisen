import 'package:flutter/foundation.dart';
import 'package:taisen/app/data/model/arena_model.dart';
import 'package:taisen/core/get_client.dart';

class LutaProvider {
  final GetClient client;

  LutaProvider({@required this.client});

  getArena(int id) async {
    try {
      final r = await client.get(
        '/arenas/$id',
        headers: {"content-type": "application/json"},
      );
      if (r.statusCode == 200) {
        final ArenaModel arena = ArenaModel.fromMap(r.body['data']['arena']);

        return arena;
      } else {
        return Exception("Status Code Error");
      }
    } catch (e) {
      return Exception("Not Expected Error");
    }
  }

  getArenas() async {
    try {
      final r = await client.get(
        '/arenas',
        headers: {"content-type": "application/json"},
      );
      if (r.statusCode == 200) {
        final List<ArenaModel> arenas = List<ArenaModel>.from(
            r.body['data'].map((x) => ArenaModel.fromMap(x)));

        return arenas;
      } else {
        return Exception("Status Code Error");
      }
    } catch (e) {
      return Exception("Not Expected Error");
    }
  }
}
