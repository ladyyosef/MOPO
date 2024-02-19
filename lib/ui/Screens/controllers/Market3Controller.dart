import 'dart:convert';
import 'dart:io';

import 'package:flutter_application_2/data/controllers/api_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import '../model/classes.dart';

class TrendingController {
  static Future<List<CurrencyData>> getcurrency([String search = '']) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    print(token);
    final response =
        await ApiController.get(endpoint: "home/trending?search=$search");
    print(response);

    return (jsonDecode(response)['data'] as List)
       
        .map((json) => CurrencyData.fromJson(json))
        
        .toList();
  }
}
