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
import 'package:flutter_application_2/ui/Screens/wallet4.dart';
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
import 'Wallet6.dart';


class Wallet5 extends StatelessWidget {
  const Wallet5({key});
    static String id = "Wallet5";

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
                Navigator.of(context).popUntil((route) => route.settings.name ==Wallet4.id);
Navigator.pushNamed(context, Wallet4.id); 
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
                      Column(
                        children: [
                           Container(
               padding: EdgeInsets.only(top:10,bottom:10,right: 5,left:10),
              child: Text(
                "You must keep these words well because they will be the key to the security of your wallet :",
                style: GoogleFonts.lexend(
                   color: Color.fromARGB(255, 9, 9, 9),
                  fontSize: 20,
                  
                 fontWeight: FontWeight.bold,
                ),
              
              ),
            ),
             SizedBox(height: 50,),
            Container(
              decoration: BoxDecoration(
              color: Color(0xFFFAFF00).withOpacity(0.40),
              borderRadius: BorderRadius.circular(20)


              ),
              width: 195,
              height: 60,
              child:Center(
                child: Text(
                  "1354",
                  style: GoogleFonts.lexend(
                     color: Color.fromARGB(255, 9, 9, 9),
                    fontSize: 17,
                    
                   fontWeight: FontWeight.bold,
                  ),),
              ) ,
            ),
            SizedBox(height: 20,),
                  Container(
              decoration: BoxDecoration(
              color: Color(0xFFFAFF00).withOpacity(0.40),
              borderRadius: BorderRadius.circular(20)


              ),
              width: 195,
              height: 60,
              child:Center(
                child: Text(
                  "8695",
                  style: GoogleFonts.lexend(
                     color: Color.fromARGB(255, 9, 9, 9),
                    fontSize: 17,
                    
                   fontWeight: FontWeight.bold,
                  ),),
              ) ,
            ),
             SizedBox(height: 20,),
                  Container(
              decoration: BoxDecoration(
              color: Color(0xFFFAFF00).withOpacity(0.40),
              borderRadius: BorderRadius.circular(20)


              ),
              width: 195,
              height: 60,
              child:Center(
                child: Text(
                  "5783",
                  style: GoogleFonts.lexend(
                     color: Color.fromARGB(255, 9, 9, 9),
                    fontSize: 17,
                    
                   fontWeight: FontWeight.bold,
                  ),),
              ) ,
            ),
                        ],
                      ),
                                   SizedBox(height: 30,),

                       Column(
                         children: [
                           Container(
               padding: EdgeInsets.only(top:10,bottom:10,right: 5,left:10),
              child: Text(
                "Take a screenshot, you won't be able to access your wallet without them",
                style: GoogleFonts.lexend(
                   color: Color(0xFF5F5454),
                  fontSize: 18,
                  
                 fontWeight: FontWeight.bold,
                ),
              
              ),
            ),
           
                         ],
                       ),
                        Icon(Icons.screenshot, color: Color(0xFFFAFF00)),
                        SizedBox(height: 60,),
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
                        Navigator.of(context).popUntil((route) => route.settings.name ==Wallet6.id);
Navigator.pushNamed(context, Pages.id); 
                       
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

    ])
    ,));
  }
}
