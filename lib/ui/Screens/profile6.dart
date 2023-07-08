import 'dart:convert';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_2/ui/Screens/profile5.dart';
import 'package:flutter_application_2/ui/Screens/profile7.dart';
import 'package:flutter_application_2/ui/Screens/profile8.dart';
import 'package:flutter_application_2/ui/widegets/custom_scaffold.dart';
import 'package:flutter_application_2/ui/widegets/custom_dropdownbutton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/controllers/api_controller.dart';
import '../widegets/Drop2.dart';
import '../widegets/Pages.dart';
import 'home.dart';

class Profile6 extends StatelessWidget {
  Profile6(
      {Key? key,
      required this.email,
      required this.fullName,
      required this.phone,
      required this.password,
      required this.birthDate, 
      required this.nationality
       })
      : super(key: key);
  var PostalCodeController = TextEditingController();
  var CityController = TextEditingController();

  static String id = "Profile6";
  final String email;
  final String password;
  final String fullName;
  final String phone;
  final String birthDate;
   final String nationality;
     String place="";
  register(BuildContext context) async {
    final r = await ApiController.post(
      endpoint: "register",
      body: {
        "email": email,
        "password": password,
        "Full_name": fullName,
        "phone": phone,
        "postal_code": PostalCodeController.text,
        "City": CityController.text,
        "Nationality":nationality,
        "Birth_date":birthDate,
        "place_of_residence":place
      },
      onError: (statusCode, body) {},
    );
    print(r);
    Map<String, dynamic> data = jsonDecode(r);
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString('token', data['token']);
    Navigator.push(context, MaterialPageRoute(builder: (_) => Profile8()));
  
  }

  bool validateFields() {
    if (PostalCodeController.text.isEmpty) {
      // عرض رسالة تحذيرية بالنسبة لحقل البريد الإلكتروني
      return false;
    }

    if (CityController.text.isEmpty) {
      // عرض رسالة تحذيرية بالنسبة لحقل كلمة المرور
      return false;
    }

    // إذا وصلت هنا، فإن جميع الحقول غير فارغة
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        child: Column(children: [
      Container(
        width: 425,
        height: 55,
        color: Colors.white,
        child: Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .popUntil((route) => route.settings.name == Profile5.id);
                  Navigator.pushNamed(context, Profile5.id);
                },
                icon: Icon(Icons.arrow_back)),
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
      Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
            color: Color.fromARGB(255, 252, 249, 255),
            width: double.infinity,
            height: 60,
            child: Text(
              "Personal Information",
              style: GoogleFonts.leckerliOne(
                color: Color(0xFF4B0B8A),
                fontSize: 22,

                //fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            padding: EdgeInsets.only(top: 1, bottom: 20, right: 180, left: 10),
            child: Text(
              'Place of residence',
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF4B0B8A),
                  fontWeight: FontWeight.bold),
            ),
          ),
          MyWidget2(onChanged: (value) => place=value,),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(top: 1, bottom: 20, right: 220, left: 10),
            child: Text(
              'Postal code',
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
              controller: PostalCodeController,
              keyboardType: TextInputType.number,
              // obscureText: true,
              onFieldSubmitted: (String value) {
                print(value);
              },
              onChanged: (String value) {
                print(value);
              },
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(19)),

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
            padding: EdgeInsets.only(top: 1, bottom: 10, right: 280, left: 3),
            child: Text(
              'City',
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
              controller: CityController,
              keyboardType: TextInputType.name,
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
                  await register(context);
                }
              },
              child: Text(
                'next',
                style: TextStyle(
                    fontSize: 22,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      )
    ]));
  }
}
