import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'api_controller.dart';
class AuthController {
  static Future<void> login(String email, String password) async{
    final body = await ApiController.post(endpoint: 'login', body: {
      'email': email,
      'password': password,
    }, onError: (int statusCode, String body) { throw Exception('Email or password is wrong'); });
    final token = (jsonDecode(body) as Map)['token'];
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString('token', token);
  }
}