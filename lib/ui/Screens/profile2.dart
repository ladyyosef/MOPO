import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/ui/Screens/controllers/RegisterController.dart';
import 'package:flutter_application_2/ui/Screens/link_api.dart';
import 'package:flutter_application_2/ui/Screens/profile1.dart';
import 'package:flutter_application_2/ui/Screens/profile3.dart';
import 'package:flutter_application_2/ui/Screens/profile4.dart';
import 'package:flutter_application_2/ui/Screens/profile8.dart';
import 'package:flutter_application_2/ui/widegets/custom_scaffold.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/controllers/api_controller.dart';
import '../widegets/Pages.dart';
import 'home.dart';

class Profile2 extends StatelessWidget {
  Profile2({Key? key}) : super(key: key);
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  //String Function(String) val;
  static String id = "Profile2";
  
  login(BuildContext context) async {
    final r = await ApiController.post(
      endpoint: "login",
      body: {
        "email": emailController.text,
        "password": passwordController.text
      },
      onError: (statusCode, body) {

      },
    );
    print(r);
    Map<String, dynamic> data = jsonDecode(r);
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString('token', data['token']);
    Navigator.push(context, MaterialPageRoute(builder: (_)=>Profile8()));
    // var response = await curd.postReequest(LinkLogin,
    //     {"email": emailController.text, "password": passwordController.text});
    // if (response['status'] == "success") {
    //   Navigator.of(context)
    //       .popUntil((route) => route.settings.name == Profile8.id);
    //   Navigator.pushNamed(context, Profile8.id);
    //   // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Profile4()));
    // } else {
    //   AwesomeDialog(
    //           context: context,
    //           title: "warning",
    //           body: Text("the password not corect"))
    //       .show();
    //   }
  }

  bool validateFields() {
    if (emailController.text.isEmpty) {
      // عرض رسالة تحذيرية بالنسبة لحقل البريد الإلكتروني
      return false;
    }

    if (passwordController.text.isEmpty) {
      // عرض رسالة تحذيرية بالنسبة لحقل كلمة المرور
      return false;
    }

    // إذا وصلت هنا، فإن جميع الحقول غير فارغة
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Container(
            width: 425,
            height: 55,
            color: Colors.white,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).popUntil(
                        (route) => route.settings.name == Profile1.id);
                    Navigator.pushNamed(context, Pages.id);
                  },
                  icon: Icon(Icons.arrow_back),
                ),
                SizedBox(
                  width: 180.0,
                ),
                Center(
                  child: Container(
                      width: 120,
                      height: 100,
                      child: Image.asset('assets/images/LogoHome.png')),
                )
              ],
            ),
          ),
          Image.asset('assets/images/pro2.png'),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding:
                    EdgeInsets.only(top: 1, bottom: 20, right: 250, left: 10),
                child: Text(
                  'Email',
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF4B0B8A),
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 340,
                height: 60,
                child: TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  // obscureText: true,
                  onFieldSubmitted: (String value) {
                    print(value);
                  },
                  onChanged: (String value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(19)),
                    // labelText: 'password',
                    //suffix: Icon(Icons.show_chart_outlined),
                  ),
                  cursorColor: Colors.purple,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 1, bottom: 10, right: 230, left: 10),
                child: Text(
                  'Password',
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF4B0B8A),
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 340,
                height: 60,
                child: TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  onFieldSubmitted: (String value) {
                    print(value);
                  },
                  onChanged: (String value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(19),
                    ),
                    // labelText: 'password',
                    suffix: Icon(Icons.show_chart_outlined),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 280,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Color(0xFF4B0B8A),
                ),
                child: MaterialButton(
                  onPressed: () async {
                    if (validateFields()) {
                      await login(context);

                    }
                  },
                  child: Text(
                    'login',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
