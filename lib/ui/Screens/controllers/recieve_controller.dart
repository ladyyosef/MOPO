import 'dart:convert';

import 'package:flutter_application_2/data/controllers/api_controller.dart';

class Recevie {
  String name;
  String email;
  String abbrevation;
  DateTime createdAt;
  int quantity;

  Recevie({
    required this.name,
    required this.email,
    required this.abbrevation,
    required this.createdAt,
    required this.quantity,
  });

  factory Recevie.fromJson(Map<String, dynamic> json) {
    return Recevie(
      name: json['name'],
      email: json['email'],
      abbrevation: json['abbrevation'],
      createdAt: DateTime.parse(json['created_at']),
      quantity: json['quantity'],
    );
  }
}

class RecieveController {
  static Future<List<Recevie>> get() async {
    final response = await ApiController.get(endpoint: 'send?to=');

    print(response);

    return (jsonDecode(response)['data'] as List)
        .map((e) => Recevie.fromJson(e))
        .toList();
  }
}
