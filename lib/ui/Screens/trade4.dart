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
import 'package:flutter_application_2/ui/Screens/trade_var1.dart';
import 'package:flutter_application_2/ui/Screens/wallet1.dart';
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
import '../widegets/drop.dart';
import '../widegets/opration_appbar.dart';
import 'Wallet6.dart';

class Trade4 extends StatelessWidget {
   Trade4({Key? key}) : super(key: key);
    static String id = "Trade4";
      var amount = TextEditingController();
    var amountR = TextEditingController();

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

SizedBox(height: 20,),
        Container(  padding: EdgeInsets.only(top:10,bottom:10,right: 10,left:20),
 color: Color.fromARGB(255, 252, 249, 255),             
  width: double.infinity,
                 height: 60,

           child: Text(
              "Trade",
              style: GoogleFonts.leckerliOne(
                color:  Color(0xFF4B0B8A),
                fontSize: 22,
                
                //fontWeight: FontWeight.bold,
              ),
            
            ),
         ),
         SizedBox(height: 30,),
           Container(
            padding: EdgeInsets.only(top: 20, left: 4, right: 290, bottom: 10),
            child: Text(
              'Offer :' ,
               style: GoogleFonts.lexend(
                fontSize: 20,
                  color:  Color(0xFF4B0B8A),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
           Container(
                width: 365,
                height: 58,
                 color:  Color(0xFFE7E6E6),

                child: TextFormField(
                  controller: amount,
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

                    labelText: 'the amount',
                    
                    //suffix: Icon(Icons.show_chart_outlined),
                  ),
                  //cursorColor: Colors.purple,
                ),
              ),SizedBox(height: 15,),
              MyWidget(),
         
              SizedBox(height: 30,),
                         Container(
            padding: EdgeInsets.only(top: 10, left: 14, right: 270, bottom: 10),
            child: Text(
              'For :',
               style: GoogleFonts.lexend(
                fontSize: 20,
                  color:  Color(0xFF4B0B8A),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
         
         
           Container(
                width: 365,
                height: 58,
                 color:  Color(0xFFE7E6E6),

                child: TextFormField(
                  controller: amountR,
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

                    labelText: 'The amount required',
                    
                    //suffix: Icon(Icons.show_chart_outlined),
                  ),
                  //cursorColor: Colors.purple,
                ),
              ),SizedBox(height: 15,),
              MyWidget(),
         
         
         
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
                      Navigator.of(context).popUntil((route) => route.settings.name ==TradeVar1.id);
Navigator.pushNamed(context, TradeVar1.id);  
                  },
                  child: Text(
                    'Next',
                    style: GoogleFonts.lexendExa(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  )),),
    ],),
    );
  }

}
