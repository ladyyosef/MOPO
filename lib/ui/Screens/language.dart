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
import 'package:flutter_application_2/ui/widegets/custom_scaffold_market.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widegets/Pages.dart';
import 'home.dart';

class Language extends StatelessWidget {
  const Language({Key? key}) : super(key: key);
  static String id = "Language";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(children: [
      //  SizedBox(height: 50,),
      //  Image.asset('assets/images/setting.png'),
      ListView(children: [
        SizedBox(
          height: 25,
        ),
        Container(
          width: double.infinity,
          height: 60,
          color: Color(0xFF4B0B8A),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                   Navigator.of(context).popUntil((route) => route.settings.name == Home.id);
Navigator.pushNamed(context, Pages.id);     
                },
                icon: Icon(Icons.arrow_back),
                color: Color(0xFFFFFFFF),
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
                child: Text(
                  "Language",
                  style: GoogleFonts.lexendExa(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Column(children: [
          Row(
            children: [
              Container(
                padding:
                    EdgeInsets.only(top: 10, bottom: 30, right: 20, left: 15),
                child: Icon(
                  Icons.radio_button_checked_sharp,
                            color: Color(0xC7FBFF00),
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 10, bottom: 30, right: 200, left: 5),
                child: Text(
                  "English",
                  style: GoogleFonts.lexendExa(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Image.asset("assets/images/priv1.png"),
        ])
      ])
    ])));
  }
}
