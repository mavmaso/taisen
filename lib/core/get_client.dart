import 'package:flutter/foundation.dart';
import 'package:get/get_connect.dart';

class GetClient extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = kDebugMode
        ? 'http://192.168.15.10:4000/api/v1'
        : 'https://server.com/api/v1';
  }
}
