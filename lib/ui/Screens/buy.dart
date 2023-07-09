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
import 'package:flutter_application_2/ui/Screens/Wallet6.dart';
import 'package:flutter_application_2/ui/Screens/trade_var1.dart';
import 'package:flutter_application_2/ui/Screens/wallet1.dart';
import 'package:flutter_application_2/ui/widegets/currencies.dart';
import 'package:flutter_application_2/ui/widegets/drop.dart';
import 'package:google_fonts/google_fonts.dart';
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
import 'package:flutter_application_2/ui/widegets/currencies.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../data/controllers/api_controller.dart';
import '../widegets/Pages.dart';
import '../widegets/opration_appbar.dart';
import 'buy_var1.dart';
import 'buy_var2.dart';
import 'home.dart';

class NBuy extends StatelessWidget {
  NBuy({Key? key}) : super(key: key);
  static String id = "NBuy";
  var fromController = TextEditingController();
  var toController = TextEditingController();
  send(BuildContext context) async {
    final r = await ApiController.post(
      endpoint: "buy",
      body: {
        "currency_id_in": fromController.text,
        "currency_id_out": toController.text
      },
      onError: (statusCode, body) {},
    );
    print(r);

    Navigator.push(context, MaterialPageRoute(builder: (_) => BuyVar2()));
  }

  int currencyId = 0;

  bool validateFields() {
    if (toController.text.isEmpty) {
      // عرض رسالة تحذيرية بالنسبة لحقل البريد الإلكتروني
      return false;
    }

    if (toController.text.isEmpty) {
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
        body: Stack(
          children: [
            Image.asset('assets/images/W6.png'),
            ListView(
              children: [
                Column(
                  children: [
                    Container(
                      width: 425,
                      height: 55,
                      color: Colors.white,
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).popUntil((route) =>
                                    route.settings.name == Wallet6.id);
                                Navigator.pushNamed(context, Pages.id);
                              },
                              icon: Icon(Icons.arrow_back)),
                          SizedBox(
                            width: 180.0,
                          ),
                          Center(
                            child: Container(
                                width: 120,
                                height: 100,
                                child:
                                    Image.asset('assets/images/LogoHome.png')),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 10, bottom: 10, right: 10, left: 20),
                      color: Color.fromARGB(255, 252, 249, 255),
                      width: double.infinity,
                      height: 60,
                      child: Text(
                        "Buy",
                        style: GoogleFonts.leckerliOne(
                          color: Color(0xFF4B0B8A),
                          fontSize: 22,

                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 20, left: 4, right: 290, bottom: 10),
                      child: Text(
                        'From :',
                        style: GoogleFonts.lexend(
                          fontSize: 20,
                          color: Color(0xFF4B0B8A),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: 365,
                      height: 58,
                      color: Color(0xFFE7E6E6),
                      child: TextFormField(
                        controller: fromController,
                        keyboardType: TextInputType.number,
                        // obscureText: true,
                        onFieldSubmitted: (String value) {
                          print(value);
                        },
                        onChanged: (String value) {
                          print(value);
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2)),

                          labelText: 'Enter the amount to be transferred',

                          //suffix: Icon(Icons.show_chart_outlined),
                        ),
                        //cursorColor: Colors.purple,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.only(
                          top: 10, left: 14, right: 280, bottom: 10),
                      child: Text(
                        'USD \$',
                        style: GoogleFonts.lexend(
                          fontSize: 20,
                          color: Color(0xFF4B0B8A),
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 10, left: 10, right: 290, bottom: 10),
                      child: Text(
                        'To :',
                        style: GoogleFonts.lexend(
                          fontSize: 20,
                          color: Color(0xFF4B0B8A),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: 365,
                      height: 58,
                      color: Color(0xFFE7E6E6),
                      child: TextFormField(
                        controller: toController,
                        keyboardType: TextInputType.number,
                        // obscureText: true,
                        onFieldSubmitted: (String value) {
                          print(value);
                        },
                        onChanged: (String value) {
                          print(value);
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2)),

                          labelText: 'The amount to be sent',

                          //suffix: Icon(Icons.show_chart_outlined),
                        ),
                        //cursorColor: Colors.purple,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    MyWidget(
                      onChanged: (value) {
                        currencyId = value;
                      },
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    Container(
                      width: 280,
                      height: 55,
                      //padding: EdgeInsets.only(top:5,bottom:5,right: 1,left: 10),
                      decoration: BoxDecoration(
                        color: Color(0xFF4B0B8A),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => BuyVar2()));
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
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
