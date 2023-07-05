import 'dart:convert';
import 'dart:io';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart'as http;


import '../model/classes.dart';


class ShowUserController {
  static Future<List<ShowUser>> getUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    final response = await http.get(
      Uri.parse('http://127.0.0.1:8000/api/user/5'),
      headers: {
        'accept': 'application/json',
        HttpHeaders.authorizationHeader: 'Bearer $token'
      },
    );
    print(response.body);
    //فك تشفير json
    //وتحويله الى ليست 'date'
    return (jsonDecode(response.body)['data'] as List)
        //تحويل كل عنصر من ال (json) الcours
        .map((json) => ShowUser.fromJson(json))
        //   إضافة الكائنات المحولة إلى القائمة وإرجاعها
        .toList();
  }
}