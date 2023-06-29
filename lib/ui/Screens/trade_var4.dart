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
import 'package:flutter_application_2/ui/Screens/trade.dart';
import 'package:flutter_application_2/ui/Screens/trade_var5.dart';
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
import '../widegets/Pages.dart';
import '../widegets/opration_appbar.dart';

class TradeVar4 extends StatelessWidget {
 TradeVar4({Key? key}) : super(key: key);
  var VerificationController = TextEditingController();
    static String id = "TradeVar4";

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
                    Navigator.of(context).popUntil((route) => route.settings.name ==Trade.id);
Navigator.pushNamed(context, Trade.id);  
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
      Column(children: [
      Column(
        children: [
    
          SizedBox(
            height: 35,
          ),
          Container(
            padding: EdgeInsets.only(top: 35, bottom: 10, right: 160, left: 5),
            child: Text(
              'Verification code',
              style: TextStyle(
                  fontSize: 25,
                  color: Color(0xFF4B0B8A),
                  fontWeight: FontWeight.bold),
            ),
          ),
                
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(top: 1, left: 13, right: 15, bottom: 30),
            child: Text(
              'We have sent a verification code to your e-mail consisting of 6 number valid for 30 minutes, please enter it',
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 60,
      ),
      Container(
      width: 340,
        height: 60,
        child: TextFormField(
          controller: VerificationController,
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
    MaterialButton(
          onPressed: () {
            print(VerificationController.text);
          },
          child: Container(
         padding: EdgeInsets.only(top:80,left: 200,right: 11,bottom:50 ),

            child: Text(
              'Not Sent',
              style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF4B0B8A),
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(height: 70,),
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
                                       Navigator.of(context).popUntil((route) => route.settings.name == tradeVar5.id);
Navigator.pushNamed(context, tradeVar5.id);  
                  },
                  child: Text(
                    'Next',
                    style: GoogleFonts.lexendExa(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  )),),

    ])
    ],),
    );
  }
}