import 'package:flutter_test/flutter_test.dart';
import 'package:get/get_connect/connect.dart';
import 'package:mockito/mockito.dart';
import 'package:taisen/app/data/model/arena_model.dart';
import 'package:taisen/app/data/provider/luta_provider.dart';
import 'package:taisen/core/get_client.dart';

class GetClientMock extends Mock implements GetClient {}

void main() {
  GetClientMock getClientMock;
  LutaProvider lutaProvider;

  setUpAll(() {
    getClientMock = GetClientMock();
    lutaProvider = LutaProvider(client: getClientMock);
  });

  group('Method Get', () {
    final fake = {
      "data": {
        'arena': {'id': 1, 'status': "closed"}
      }
    };
    final arena = ArenaModel(
      id: 1,
      p1Id: 1,
      p2Id: 1,
      char1Id: 1,
      char2Id: 1,
      status: "closed",
    );

    test('should returns ArenaModel, when successful', () async {
      when(
        getClientMock.get(
          any,
          headers: {"content-type": "application/json"},
        ),
      ).thenAnswer(
        (realInvocation) async => Response(
          body: fake,
          statusCode: 200,
          headers: {},
        ),
      );

      final result = await lutaProvider.getArena(1);

      expect(result.id, arena.id);
      expect(result.status, arena.status);
    });

    test('should not returns ArenaModel, when status code error', () async {
      when(
        getClientMock.get(
          any,
          headers: {"content-type": "application/json"},
        ),
      ).thenAnswer(
        (realInvocation) async => Response(
          body: {},
          statusCode: 400,
          headers: {},
        ),
      );

      final result = await lutaProvider.getArena(1);

      expect(result, {"error": "Status Code Error"});
    });

    test('should not returns, when catch a error', () async {
      when(
        getClientMock.get(
          any,
          headers: {"content-type": "application/json"},
        ),
      ).thenThrow(new ArgumentError());

      final result = await lutaProvider.getArena(1);

      expect(result, {"error": "Not Expected Error"});
    });
  });
}
