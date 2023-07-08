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
import 'package:flutter_application_2/ui/Screens/trade_var2.dart';
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

class TradeVar3 extends StatelessWidget {
  const TradeVar3({Key? key}) : super(key: key);
    static String id = "TradeVar3";

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
                  Navigator.push(context, MaterialPageRoute(builder: (_) => TradeVar2()));

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
      SizedBox(height:40,),
       Container(
        width: 300,
        height: 300,
        padding: EdgeInsets.only(left: 50),
        child: Image.asset('assets/images/T3.png')),
           Container(
            padding: EdgeInsets.only(top: 1, left: 13, right: 15, bottom: 30),
            child: Text(
              'We will inform you of instant trade success',
               style: GoogleFonts.lexendDeca(
                fontSize: 20,
                color: Color.fromARGB(255, 0, 0, 0),
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
                      Navigator.of(context).popUntil((route) => route.settings.name == Wallet6.id);
Navigator.pushNamed(context, Pages.id);  
                  },
                  child: Text(
                    'Done',
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