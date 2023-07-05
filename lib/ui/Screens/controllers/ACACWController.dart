import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/ui/Screens/wallet4.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../data/controllers/api_controller.dart';
import '../profile8.dart';

AddCard(BuildContext context) async {
    final r = await ApiController.post(
      endpoint: "card",
      body: {
       
      },
      onError: (statusCode, body) {

      },
    );
    print(r);
    Map<String, dynamic> data = jsonDecode(r);
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString('token', data['token']);
    Navigator.push(context, MaterialPageRoute(builder: (_)=>Wallet4()));
   
  }