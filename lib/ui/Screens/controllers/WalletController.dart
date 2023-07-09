import 'dart:convert';
import 'dart:io';

import 'package:flutter_application_2/data/controllers/api_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import '../model/classes.dart';

class WalletController {
  static Future<List<Item>> getcurrency() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    print(token);
    final response = await ApiController.get(endpoint: "wallet");
    print(response);
    //فك تشفير json
    //وتحويله الى ليست 'date'
    return (jsonDecode(response)['data'] as List)
        //تحويل كل عنصر من ال (json) الcours
        .map((json) => Item.fromJson(json))
        //   إضافة الكائنات المحولة إلى القائمة وإرجاعها
        .toList();
  }

  static Future<List<CreditCard>> getCards() async {
    final response = await ApiController.get(endpoint: "card");
    print(response);
    //فك تشفير json
    //وتحويله الى ليست 'date'
    return (jsonDecode(response)['data'] as List)
        //تحويل كل عنصر من ال (json) الcours
        .map((json) => CreditCard.fromJson(json))
        //   إضافة الكائنات المحولة إلى القائمة وإرجاعها
        .toList();
  }
}

class CreditCard {
  int id;
  String holderName;
  String type;
  DateTime expireDate;

  CreditCard({
    required this.id,
    required this.holderName,
    required this.type,
    required this.expireDate,
  });

  factory CreditCard.fromJson(Map<String, dynamic> json) {
    return CreditCard(
      id: json['id'],
      holderName: json['Holder_Name'],
      type: json['type'],
      expireDate: DateTime.parse(json['Expire_Date']),
    );
  }
}
