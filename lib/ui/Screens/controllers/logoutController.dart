import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/ui/Screens/logout.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import '../../../data/controllers/api_controller.dart';
import '../model/classes.dart';
import '../profile1.dart';
import '../profile8.dart';

void logoutController(BuildContext context) async {
  final r = await ApiController.post(
    endpoint: "logout",
    body: {},
    onError: (statusCode, body) {},
  );
  print(r);
 
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
   await sharedPreferences.remove('token');
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => Profile1(),
      ),
    );

}