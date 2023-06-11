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
import 'package:flutter_application_2/ui/Screens/wallet2.dart';
import 'package:flutter_application_2/ui/widegets/currencies.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widegets/Pages.dart';
import 'nav_pages/nav_bar.dart';

class Wallet1 extends StatelessWidget {
  const Wallet1({key});
    static String id = "Wallet1";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
    
        child: Scaffold(
          backgroundColor:   Color(0xFF4B0B8A) ,
            body: Stack(children: [
      Container(
          width: double.infinity,
          child: Image.asset('assets/images/W1.png',
              width: double.infinity)),
      ListView(children: [
        
Column(
  children: [
    SizedBox(height: 200,),
        Container(
          width:550,
          height: 300,
          child: Center(child: Image.asset('assets/images/W1r.png'))),
  ],
),
  Container(
                    //padding: EdgeInsets.only(top:5,bottom:5,right: 1,left: 10),
                    width: 10,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).popUntil((route) => route.settings.name ==Wallet2.id);
Navigator.pushNamed(context, Wallet2.id);  
                        },
                        child: Text(
                          'Let\'s create your wallet',
                          style: GoogleFonts.lexendExa(
                          color: Color(0xFF4B0B8A) ,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
      ])
  

    ])
    ));
  }
}
