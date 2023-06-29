import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_application_2/ui/widegets/opration_appbar.dart';

import '../widegets/Pages.dart';
import 'Wallet6.dart';

class Trade extends StatefulWidget {
  const Trade({Key? key}) : super(key: key);
  static String id = "Trade";

  @override
  State<Trade> createState() => _TradeState();
}

class _TradeState extends State<Trade> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset('assets/images/W6.png'),
            ListView(
              children: [
                SizedBox(height: 10),
                 Column(children: [
       Container(
          width: 425,
          height: 55,
          color: Colors.white,
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).popUntil((route) => route.settings.name ==Wallet6.id);
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
                    child: Image.asset('assets/images/LogoHome.png')),
              )
            ],
          ),
        ),
        Container(
            padding: EdgeInsets.only(top: 30, left: 12, right: 270, bottom: 20),
            child: Text(
              'Trade:',
               style: GoogleFonts.lexend(
                fontSize: 25,
                  color:  Color(0xFF4B0B8A),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),


    ],)  ],
            ),
          ],
        ),
    ));
    
  }
}
