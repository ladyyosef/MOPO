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
import 'package:flutter_application_2/ui/Screens/trade1.dart';
import 'package:flutter_application_2/ui/Screens/trade_var4.dart';
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

class Trade5 extends StatelessWidget {
  const Trade5({Key? key}) : super(key: key);
    static String id = "Trade5";

  @override
  Widget build(BuildContext context) {
    return OprationAppbar(child: Column(children: [

 Container(
          width: 425,
          height: 55,
          color: Colors.white,
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).popUntil((route) => route.settings.name ==Trade1.id);
Navigator.pushNamed(context, Trade1.id);  
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
          Image.asset('assets/images/Trade5.png'),
             Container(
            padding: EdgeInsets.only(top: 20, left: 4, right: 290, bottom: 10),
            child: Text(
              ' From:' ,
               style: GoogleFonts.lexend(
                fontSize: 20,
                  color:  Color(0xFF4B0B8A),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
             color:  Color(0xFFE7E7E7).withOpacity(0.8),
            height: 70,
    
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Container(
                decoration: BoxDecoration(border: Border.all( color: Color(0xFFFAFF00),width: 2 ),borderRadius: BorderRadius.circular(30)),
                child: CircleAvatar(
                  maxRadius: 25,
                  minRadius: 25,
                  
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person,size: 45,color: Color(0xFF4B0B8A),),
                  
              
                ),
              ),
                Text(
                "Wellim hign",
                style: GoogleFonts.lexendExa(
                    color: Color(0xFF4B0B8A),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                
              ),
                 Row(
                   children: [
                     Text(
                "190.25NEO",
                style: GoogleFonts.lexendExa(
                        color: Color(0xFF4B0B8A),
                      fontSize: 10,
                      //fontWeight: FontWeight.bold,
                ),
                
              ),
              SizedBox(width: 5,),
              Image.asset('assets/images/NeoT1.png'),
                   ],
                 ),
                     
              ],),
          ),
          SizedBox(height: 20,),
             Icon(Icons.swap_vertical_circle_sharp, color: Color(0xFF4B0B8A),size: 40,),
          SizedBox(height: 10,),
           Container(
            padding: EdgeInsets.only(top: 20, left: 4, right: 290, bottom: 10),
            child: Text(
              ' To:' ,
               style: GoogleFonts.lexend(
                fontSize: 20,
                  color:  Color(0xFF4B0B8A),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
           Container(
             color:  Color(0xFFE7E7E7).withOpacity(0.8),
            height: 70,
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 Container(
                      decoration: BoxDecoration(border: Border.all( color: Color(0xFFFAFF00),width: 2 ),borderRadius: BorderRadius.circular(30)),
                      child: CircleAvatar(
                        maxRadius: 25,
                        minRadius: 25,
                        
                        backgroundColor: Colors.white,
                        child: Icon(Icons.person,size: 45,color: Color(0xFF4B0B8A),),
                        
                    
                      ),
                    ),
                      Text(
                      "Lady abo alenin",
                      style: GoogleFonts.lexendExa(
                          color: Color(0xFF4B0B8A),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                      
                    ),
                       Row(
                         children: [
                           Text(
                      "190.25BTC",
                      style: GoogleFonts.lexendExa(
                              color: Color(0xFF4B0B8A),
                            fontSize: 10,
                            //fontWeight: FontWeight.bold,
                      ),
                      
                    ),
                    SizedBox(width: 5,),
                    Image.asset('assets/images/BtcT.png'),
                         ],
                       ),
               ],
             ),
           ),


          ],),
          SizedBox(height: 30,),
              Container(
               width: 200,
                height: 55,
                  //padding: EdgeInsets.only(top:5,bottom:5,right: 1,left: 10),
                      decoration: BoxDecoration(
               
                  color:  Color(0xFF4B0B8A),
                  
                  
                  
                
                borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextButton(
                  onPressed: () {
                         Navigator.of(context).popUntil((route) => route.settings.name ==TradeVar4.id);
Navigator.pushNamed(context, TradeVar4.id);  
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
