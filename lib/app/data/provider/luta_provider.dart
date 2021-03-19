import 'package:flutter/foundation.dart';
import 'package:taisen/app/data/model/arena_model.dart';
import 'package:taisen/core/get_client.dart';

class LutaProvider {
  final GetClient client;

  LutaProvider({@required this.client});

  getArena(int id) async {
    final r = await client.get(
      '/arenas/$id',
      headers: {"content-type": "application/json"},
    );

    final ArenaModel arena = ArenaModel.fromMap(r.body['data']['arena']);

    return arena;
  }

  getArenas() async {
    final r = await client.get(
      '/arenas',
      headers: {"content-type": "application/json"},
    );

    final List<ArenaModel> arenas =
        List<ArenaModel>.from(r.body['data'].map((x) => ArenaModel.fromMap(x)));

    return arenas;
  }
}
