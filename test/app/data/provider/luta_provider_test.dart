import 'package:flutter_test/flutter_test.dart';
import 'package:get/get_connect/connect.dart';
import 'package:mockito/mockito.dart';
import 'package:taisen/app/data/model/arena_model.dart';
// import 'package:taisen/app/data/model/arena_model.dart';
import 'package:taisen/app/data/provider/luta_provider.dart';

class GetMock extends Mock implements GetConnect {
  void onInit() {
    httpClient.baseUrl = 'http://test.co.br/api/v1';
  }
}

void main() {
  GetMock getMock;
  LutaProvider lutaProvider;

  setUpAll(() {
    getMock = GetMock();
    lutaProvider = LutaProvider();
  });

  group('Method Get', () {
    final fake = {
      "data": {'teste': 'teste'}
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
        getMock.get(
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
  });
}
