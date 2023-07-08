import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class ApiController {
  static const baseUrl = 'http://localhost:8000/api/';

  static Map<String, String> headers = {
    HttpHeaders.acceptHeader: 'application/json'
  };

  static Future<String> get(
      {required String endpoint,
      Map<String, String> headers_ = const {}}) async {
        final SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    final response = await http.get(Uri.parse(baseUrl + endpoint),
        headers: ApiController.headers..addAll(headers_)..addAll(token != null
              ? {HttpHeaders.authorizationHeader: 'Bearer $token'}
              : {}));
    return response.body;
  }

  static Future<String> post(
      {required String endpoint,
      required Map<String, dynamic> body,
      Map<String, String> headers = const {},
      required Function(int statusCode, String body) onError}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    print(token);

    final response = await http.post(Uri.parse(baseUrl + endpoint),
        headers: ApiController.headers
          ..addAll(headers)
          ..addAll(token != null
              ? {HttpHeaders.authorizationHeader: 'Bearer $token'}
              : {}),
        body: body);
    if (response.statusCode >= 400) {
      onError(response.statusCode, response.body);
    }
    return response.body;
  }
}