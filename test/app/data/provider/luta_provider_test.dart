import 'package:flutter_test/flutter_test.dart';
import 'package:get/get_connect/connect.dart';
import 'package:mockito/mockito.dart';

class GetMock extends Mock implements GetConnect {}

void main() {
  GetMock getMock;

  setUpAll(() {
    getMock = GetMock();
  });

  group('Method Get', () {
    test('should returns ArenaModel, when successful', () {
      getMock.get('test');
    });
  });
}
