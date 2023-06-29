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
import 'package:flutter_application_2/ui/Screens/Wallet6.dart';
import 'package:flutter_application_2/ui/Screens/wallet3.dart';
import 'package:flutter_application_2/ui/widegets/currencies.dart';
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

import '../widegets/Pages.dart';


class Wallet4 extends StatelessWidget {
  const Wallet4({key});
    static String id = "Wallet4";

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(body: ListView(children: [
      SizedBox(height: 5),
                 Container(
          width: 425,
          height: 55,
          color: Colors.white,
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).popUntil((route) => route.settings.name ==Wallet3.id);
Navigator.pushNamed(context, Wallet3.id); 
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

                
                      SizedBox(height: 10),
                  Column(
                    children: [
                    Container(
                      width: 250,
                      height: 250,
                      child: Image.asset('assets/images/W4.png')),
                     Container(  padding: EdgeInsets.only(top:20,bottom:10,right: 200,left:10),
                 //color: Color.fromARGB(255, 255, 255, 255),

           child: Text(
              "Thank you",
              style: GoogleFonts.leckerliOne(
                 color: Color(0xFF4B0B8A),
                fontSize: 28,
                
             // fontWeight: FontWeight.bold,
              ),
            
            ),),
            Container(
               padding: EdgeInsets.only(top:10,bottom:10,right: 10,left:10),
              child: Text(
                "Verification is in progress. It will take 10 days. We will let you know by email when it is finished",
                style: GoogleFonts.lexend(
                   color: Color.fromARGB(255, 9, 9, 9),
                  fontSize: 20,
                  
                 //fontWeight: FontWeight.bold,
                ),
              
              ),
            ),
            SizedBox(height: 80,),
             Center(
               child: Container(
                    //padding: EdgeInsets.only(top:5,bottom:5,right: 1,left: 10),
                    width: 80,
                    height: 40,
                    decoration: BoxDecoration(
                 
                    color:  Color(0xFF4B0B8A),
                    
                    
                  
                  borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextButton(
                    onPressed: () {
                     Navigator.of(context).popUntil((route) => route.settings.name ==Wallet5.id);
Navigator.pushNamed(context, Wallet5.id); 
                       
                    },
                    child: Text(
                      'Next',
                      style: GoogleFonts.lexendExa(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    )),),
             ),
                    ],
                  ),
    ])
    ,));
  }
}
