import 'dart:convert';

//import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:convert/convert.dart';

class RegisterController {
  getReequest(String url) async {
    try {
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var responsebody = jsonDecode(response.body);
        return responsebody;
      } else {
        print("Error ${response.statusCode} ");
      }
    } catch (e) {
      print("Error Catch $e");
    }
  }
   postReequest(String url, Map data) async {
    try {
      var response = await http.post(Uri.parse("http://127.0.0.1:8000/api/register"),body:data);
      if (response.statusCode == 200) {
        var responsebody = jsonDecode(response.body);
        return responsebody;
      } else {
        print("Error ${response.statusCode} ");
      }
    } catch (e) {
      print("Error Catch $e");
    }
  }
}
