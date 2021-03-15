import 'dart:convert';

import 'package:http/http.dart' as http;

const baseUrl = 'http://172.19.175.154:4000/api/v1';

class HttpClient {
  getArena(int id) async {
    final response = await http.get(
      Uri.parse('http://api.cloeapp.com/healthcheck'),
      headers: {"Accept": "application/json"},
    );
    print(response.statusCode);
    print(jsonDecode(response.body));
  }
}
