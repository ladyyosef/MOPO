import 'dart:convert';

import 'package:flutter_application_2/data/controllers/api_controller.dart';

class TradeController {
  static Future<List<TradeModel>> get() async {
    final response = await ApiController.get(endpoint: 'my-trade');
    print('dasdsadsa = ' + response);

    return (jsonDecode(response)['data'] as List)
        .map((e) => TradeModel.fromJson(e))
        .toList();
  }

  static Future<List<TradeModel>> getAll() async {
    final response = await ApiController.get(endpoint: 'trade');
    print('dasdsadsa = ' + response);

    return (jsonDecode(response)['data'] as List)
        .map((e) => TradeModel.fromJson(e))
        .toList();
  }
}

class TradeModel {
  int id;
  String userInName;
  String currencyAbbreviationIn;
  String currencyAbbreviationOut;
  String currencyLogoIn;
  String currencyLogoOut;
  int quantityIn;
  int quantityOut;

  TradeModel({
    required this.id,
    required this.userInName,
    required this.currencyAbbreviationIn,
    required this.currencyAbbreviationOut,
    required this.currencyLogoIn,
    required this.currencyLogoOut,
    required this.quantityIn,
    required this.quantityOut,
  });

  factory TradeModel.fromJson(Map<String, dynamic> json) {
    return TradeModel(
      id: json['id'],
      userInName: json['user_in_name'],
      currencyAbbreviationIn: json['currency_abbrivation_in'],
      currencyAbbreviationOut: json['currency_abbrivation_out'],
      currencyLogoIn: json['currency_logo_in'],
      currencyLogoOut: json['currency_logo_out'],
      quantityIn: json['quantity_in'],
      quantityOut: json['quantity_out'],
    );
  }
}
