import 'dart:convert';
import 'dart:math';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_2/ui/Screens/Wallet5.dart';
import 'package:flutter_application_2/ui/Screens/wallet2.dart';
import 'package:flutter_application_2/ui/Screens/wallet4.dart';
import 'package:flutter_application_2/ui/widegets/currencies.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_2/ui/widegets/custom_scaffold_market.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_2/ui/widegets/currencies.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_2/ui/widegets/custom_appbar.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/controllers/api_controller.dart';
import '../widegets/Pages.dart';
import 'home.dart';

class Wallet3 extends StatelessWidget {
  Wallet3({key, required this.type});
  var CvcController = TextEditingController();
  var CardController = TextEditingController();
  var ExpirController = TextEditingController();
  var NameController = TextEditingController();
  static String id = "Wallet3";
  final String type;

  AddCard(BuildContext context) async {
    final password = getRandomString(10);
    final r = await ApiController.post(
      endpoint: "card",
      body: {
        "Card_number": CardController.text,
        "Cvc": CvcController.text,
        "Expire_Date": ExpirController.text,
        "Holder_Name": NameController.text,
        "password": password,
        "type": type
      },
      onError: (statusCode, body) {},
    );
    print(r);

    Navigator.push(context,
        MaterialPageRoute(builder: (_) => Wallet5(password: password)));
  }

  static const _chars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  Random _rnd = Random();

  String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

  bool validateFields() {
    if (CardController.text.isEmpty) {
      // عرض رسالة تحذيرية بالنسبة لحقل البريد الإلكتروني
      return false;
    }

    if (CvcController.text.isEmpty) {
      // عرض رسالة تحذيرية بالنسبة لحقل كلمة المرور
      return false;
    }
    if (ExpirController.text.isEmpty) {
      // عرض رسالة تحذيرية بالنسبة لحقل كلمة المرور
      return false;
    }
    if (NameController.text.isEmpty) {
      // عرض رسالة تحذيرية بالنسبة لحقل كلمة المرور
      return false;
    }

    // إذا وصلت هنا، فإن جميع الحقول غير فارغة
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Column(
              ////mainAxisAlignment: MainAxisAlignment.start,
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
                                (route) => route.settings.name == Wallet2.id);
                            Navigator.pushNamed(context, Wallet2.id);
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
                SizedBox(height: 20),
                Container(
                  padding:
                      EdgeInsets.only(top: 20, bottom: 30, right: 10, left: 10),
                  color: Color(0xFF4B0B8A),
                  width: double.infinity,
                  height: 80,
                  child: Text(
                    "Please enter your card information",
                    style: GoogleFonts.leckerliOne(
                      color: Color.fromARGB(255, 255, 251, 251),
                      fontSize: 18,

                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding:
                      EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
                  width: 400,
                  //height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      border: Border.all(
                        color: Color(0xFFFAFF00),
                        width: 3,
                      )),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              top: 20, bottom: 20, right: 100, left: 10),
                          child: Text(
                            "Card number ",
                            style: GoogleFonts.lexendDeca(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 340,
                          height: 60,
                          child: TextFormField(
                            controller: CardController,
                            keyboardType: TextInputType.number,
                            obscureText: false,
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
                              //suffix: Icon(Icons.show_chart_outlined),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 10, bottom: 10, right: 10, left: 10),
                                  child: Text(
                                    "Expiry date ",
                                    style: GoogleFonts.lexendDeca(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: 140,
                                  height: 60,
                                  child: TextFormField(
                                    controller: ExpirController,
                                    keyboardType: TextInputType.datetime,
                                    obscureText: false,
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
                                      //suffix: Icon(Icons.show_chart_outlined),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 10, bottom: 10, right: 10, left: 10),
                                  child: Text(
                                    "CVC",
                                    style: GoogleFonts.lexendDeca(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: 140,
                                  height: 60,
                                  child: TextFormField(
                                    controller: CvcController,
                                    keyboardType: TextInputType.number,
                                    obscureText: false,
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
                                      //suffix: Icon(Icons.show_chart_outlined),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                    top: 20, bottom: 20, right: 100, left: 10),
                                child: Text(
                                  "Name Holder ",
                                  style: GoogleFonts.lexendDeca(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 340,
                                height: 60,
                                child: TextFormField(
                                  controller: NameController,
                                  keyboardType: TextInputType.name,
                                  obscureText: false,
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
                                    //suffix: Icon(Icons.show_chart_outlined),
                                  ),
                                ),
                              ),
                            ]),
                        SizedBox(
                          height: 15,
                        ),
                      ]),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    //padding: EdgeInsets.only(top:5,bottom:5,right: 1,left: 10),
                    width: 80,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xFF4B0B8A),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextButton(
                        onPressed: () async {
                          if (validateFields()) {
                            await AddCard(context);
                          }
                        },
                        child: Text(
                          'Next',
                          style: GoogleFonts.lexendExa(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
                  //  SizedBox(width:80),

                  Container(
                    //padding: EdgeInsets.only(top:10,bottom:10,right: 10,left: 10),
                    width: 80,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Color(0xFF4B0B8A),
                          width: 2,
                        )),
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).popUntil(
                              (route) => route.settings.name == Home.id);
                          Navigator.pushNamed(context, Pages.id);
                        },
                        child: Text(
                          'Skip',
                          style: GoogleFonts.lexendExa(
                            color: Color.fromARGB(255, 134, 123, 123),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
