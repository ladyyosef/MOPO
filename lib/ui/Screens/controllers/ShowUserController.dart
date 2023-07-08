import 'dart:convert';
import 'dart:io';

import 'package:flutter_application_2/data/controllers/api_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import '../model/classes.dart';

class ShowUserController {
  static Future<ShowUser> getUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    print(token);
    final response = await ApiController.get(endpoint: "ur");
    print(response);
    //فك تشفير json
    //وتحويله الى ليست 'date'
    return ShowUser.fromJson(jsonDecode(response)['data']);
  }
}
