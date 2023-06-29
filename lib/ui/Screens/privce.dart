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

class Privce extends StatelessWidget {
  const Privce({Key? key}) : super(key: key);
    static String id = "Privce";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(children: [
            //  SizedBox(height: 50,),
      Image.asset('assets/images/setting.png'),
      ListView(children: [
         Container(
          width: double.infinity,
          height: 60,
          color: Color(0xFF4B0B8A),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
           IconButton(onPressed: (){
   Navigator.of(context).popUntil((route) => route.settings.name == Home.id);
Navigator.pushNamed(context, Pages.id);
}, icon: Icon(Icons.arrow_back),color: Color(0xFFFFFFFF),
),
              Container(
                              padding: EdgeInsets.only(top: 0, bottom: 10, right: 10, left: 10),
        
                child: Text(
                             "Privacy and protection",
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
        SizedBox(height: 50,),
        
      
        Column(
          children: [
            Container(
            padding: EdgeInsets.only(top: 10, bottom: 30, right:270, left: 5),
            child: Text(
              "Privacy",
              style: GoogleFonts.lexendExa(
                color: Color(0xFF4B0B8A),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            
      ),
      Image.asset("assets/images/priv1.png"),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Container(
                      padding: EdgeInsets.only(top: 10, bottom: 30, right: 40, left: 10),

           child: Text(
                "Phone number",
                style: GoogleFonts.lexendExa(
                  color: Color.fromARGB(255, 1, 1, 1),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
         ),
             Container(
                                    padding: EdgeInsets.only(top: 10, bottom: 30, right: 10, left: 80),

               child: Text(
                "09123456789",
                style: GoogleFonts.lexendExa(
                  color: Color(0xFF4B0B8A),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                         ),
             ),
      ],),
            Image.asset("assets/images/priv1.png"),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Container(
                      padding: EdgeInsets.only(top: 10, bottom: 30, right: 20, left: 10),

           child: Text(
                "Email",
                style: GoogleFonts.lexendExa(
                  color: Color.fromARGB(255, 1, 1, 1),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
         ),
             Container(
                                    padding: EdgeInsets.only(top: 10, bottom: 30, right: 10, left: 70),

               child: Text(
                "lady123@gmail.com",
                style: GoogleFonts.lexendExa(
                  color: Color(0xFF4B0B8A),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                         ),
             ),
      ],),
                  Image.asset("assets/images/priv1.png"),
                    SizedBox(
                      height: 70,
                    ),
                     Container(
            padding: EdgeInsets.only(top: 10, bottom: 30, right: 250, left: 5),
            child: Text(
              "protection",
              style: GoogleFonts.lexendExa(
                color: Color(0xFF4B0B8A),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            
      ),
      Image.asset("assets/images/priv1.png"),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Container(
                      padding: EdgeInsets.only(top: 10, bottom: 30, right: 90, left: 10),

           child: Text(
                "Lock Code",
                style: GoogleFonts.lexendExa(
                  color: Color.fromARGB(255, 1, 1, 1),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
         ),
             Container(
                                    padding: EdgeInsets.only(top: 10, bottom: 30, right: 10, left: 80),

               child: Text(
                "******818",
                style: GoogleFonts.lexendExa(
                  color: Color(0xFF4B0B8A),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                         ),
             ),
      ],),
            Image.asset("assets/images/priv1.png"),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Container(
                      padding: EdgeInsets.only(top: 10, bottom: 30, right: 80, left: 10),

           child: Text(
                "Two-step verification",
                style: GoogleFonts.lexendExa(
                  color: Color.fromARGB(255, 1, 1, 1),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
         ),
             Container(
                                    padding: EdgeInsets.only(top: 10, bottom: 30, right: 10, left: 70),

               child: Text(
                "",
                style: GoogleFonts.lexendExa(
                  color: Color(0xFF4B0B8A),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                         ),
             ),
      ],),
                  Image.asset("assets/images/priv1.png"),
                   Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Container(
                      padding: EdgeInsets.only(top: 10, bottom: 30, right: 80, left: 10),

           child: Text(
                "devices",
                style: GoogleFonts.lexendExa(
                  color: Color.fromARGB(255, 1, 1, 1),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
         ),
             Container(
                                    padding: EdgeInsets.only(top: 10, bottom: 30, right: 10, left: 70),

               child: Text(
                "",
                style: GoogleFonts.lexendExa(
                  color: Color(0xFF4B0B8A),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                         ),
             ),
      ],),
                  Image.asset("assets/images/priv1.png"),

          ],
        ),
      ])
    ])));
  }
}
