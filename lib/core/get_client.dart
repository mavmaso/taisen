import 'package:flutter/foundation.dart';
import 'package:get/get_connect.dart';

class GetClient extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = kDebugMode
        ? 'http://172.23.228.65:4000/api/v1'
        : 'https://server.com/api/v1';
  }
}
