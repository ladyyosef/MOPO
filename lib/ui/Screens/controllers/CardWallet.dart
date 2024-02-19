import 'dart:convert';
import 'dart:io';

import 'package:flutter_application_2/data/controllers/api_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import '../model/classes.dart';

class CardWalletController {
  static Future<List<CreditCard>> getcard() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    print(token);
    final response = await ApiController.get(endpoint: "card");
    print(response);
   
    return (jsonDecode(response)['data'] as List)
       
        .map((json) => CreditCard.fromJson(json))
  
        .toList();
  }

  static Future<void> deletecard(int id) async {
    final response = await ApiController.delete(
      endpoint: "card/$id",
      onError: (statusCode, body) {},
    );
    print(response);
  }
}
