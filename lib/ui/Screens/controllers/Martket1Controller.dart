import 'dart:convert';
import 'dart:io';

import 'package:flutter_application_2/data/controllers/api_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import '../model/classes.dart';

class WatichlistController {
  static Future<List<CurrencyData>> getcurrency([String search = '']) async {
    final response =
        await ApiController.get(endpoint: "home/watchlist?search=$search");
    print(response);
    //فك تشفير json
    //وتحويله الى ليست 'date'
    final list = (jsonDecode(response)['data'] as List)
        //تحويل كل عنصر من ال (json) الcours
        .map((json) => CurrencyData.fromJson(json))
        //   إضافة الكائنات المحولة إلى القائمة وإرجاعها
        .toList();
    print(list.length);
    return list;
  }
}
