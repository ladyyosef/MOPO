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
import 'package:flutter_application_2/ui/Screens/buy.dart';
import 'package:flutter_application_2/ui/Screens/buy_var1.dart';
import 'package:flutter_application_2/ui/Screens/buy_var3.dart';
import 'package:flutter_application_2/ui/widegets/currencies.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widegets/Pages.dart';
import '../widegets/opration_appbar.dart';
import 'a_var2.dart';
import 'admin_wallet4.dart';

class AVar1 extends StatelessWidget {
  AVar1({Key? key}) : super(key: key);
  var VerificationController1 = TextEditingController();
    var VerificationController2 = TextEditingController();
  var VerificationController3 = TextEditingController();
  static String id = "AVar1";


  @override
  Widget build(BuildContext context) {
    return OprationAppbar(child: 
    Column(children: [
        Container(
        width: 425,
        height: 55,
        color: Colors.white,
        child: Row(
          children: [
            IconButton(
                onPressed: () {
              Navigator.of(context).popUntil((route) => route.settings.name == AdminWallet4.id);
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
            padding: EdgeInsets.only(top: 35, bottom: 10, right: 120, left: 5),
            child: Text(
              'Verification wallet',
               style: GoogleFonts.lexendDeca(
                  fontSize: 25,
                  color: Color(0xFF4B0B8A),
                  //fontWeight: FontWeight.bold
                  ),
            ),
          ),
                
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(top: 1, left: 13, right: 15, bottom: 30),
            child: Text(
              'Please enter the twelve words of your wallet',
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
            SizedBox(
            height: 40,
          ),
           Container(
        width: 250,
        height: 55,
        decoration: BoxDecoration( borderRadius: BorderRadius.circular(19),
        color: Color(0xFFFAFF00).withOpacity(0.4),

        ),
        child: TextFormField(
          controller: VerificationController1,
          keyboardType: TextInputType.number,
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
            //
            //suffix: Icon(Icons.show_chart_outlined),
          ),
        ),
      ),SizedBox(height: 20,),
       Container(
        width: 250,
        height: 55,
        decoration: BoxDecoration( borderRadius: BorderRadius.circular(19),
        color: Color(0xFFFAFF00).withOpacity(0.4),

        ),
        child: TextFormField(
          controller: VerificationController2,
          keyboardType: TextInputType.number,
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
            //
            //suffix: Icon(Icons.show_chart_outlined),
          ),
        ),
      ),
      SizedBox(height: 20,),
       Container(
        width: 250,
        height: 55,
        decoration: BoxDecoration( borderRadius: BorderRadius.circular(19),
        color: Color(0xFFFAFF00).withOpacity(0.4),

        ),
        child: TextFormField(
          controller: VerificationController3,
          keyboardType: TextInputType.number,
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
            //
            //suffix: Icon(Icons.show_chart_outlined),
          ),
        ),
      ),
      SizedBox(height: 80,),
        Container(
              width: 280,
                height: 55,
                  //padding: EdgeInsets.only(top:5,bottom:5,right: 1,left: 10),
                      decoration: BoxDecoration(
               
                  color:  Color(0xFF4B0B8A),
                  
                  
                  
                
                borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextButton(
                  onPressed: () {
  Navigator.of(context).popUntil((route) => route.settings.name == AVar2.id);
Navigator.pushNamed(context, AVar2.id);                  },
                  child: Text(
                    'Next',
                    style: GoogleFonts.lexendExa(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  )),),

        ],
    )
   
    );
  }
}