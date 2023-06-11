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
import '../widegets/Pages.dart';
import '../widegets/opration_appbar.dart';
import 'a_add2.dart';
import 'a_var1.dart';
import 'admin_wallet4.dart';
import 'buy_var1.dart';

class AAdd extends StatelessWidget {
  AAdd({Key? key}) : super(key: key);
  static String id = "AAdd";
  var CurrencyName = TextEditingController();
  var Abbreviation = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return OprationAppbar(
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
                          (route) => route.settings.name == AdminWallet4.id);
                      Navigator.pushNamed(context, AdminWallet4.id);
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
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 20),
            color: Color.fromARGB(255, 252, 249, 255),
            width: double.infinity,
            height: 60,
            child: Text(
              "Add",
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
          Stack(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey[300],
                // backgroundImage: NetworkImage('https://example.com/profile-image.png'),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    // اضف هنا الكود الذي يفتح شاشة جديدة لتحميل الصورة الجديدة
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            padding: EdgeInsets.only(top: 1, bottom: 10, right: 230, left: 10),
            child: Text(
              'Currency Name',
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
            width: 320,
            height: 60,
            child: TextFormField(
              controller: CurrencyName,
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
          SizedBox(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.only(top: 1, bottom: 10, right: 230, left: 10),
            child: Text(
              'Abbreviation',
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
            width: 320,
            height: 60,
            child: TextFormField(
              controller: Abbreviation,
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
          SizedBox(
            height: 40,
          ),
          Container(
            width: 280,
            height: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Color(0xFF4B0B8A),
            ),
            child: MaterialButton(
              onPressed: () {
                print(Abbreviation.text);
                print(CurrencyName.text);
                Navigator.of(context)
                    .popUntil((route) => route.settings.name == AAdd2.id);
                Navigator.pushNamed(context, AAdd2.id);
              },
              child: Text(
                'Next',
                style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
