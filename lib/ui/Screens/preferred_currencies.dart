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
import 'package:flutter_application_2/ui/Screens/bitcoin.dart';
import 'package:flutter_application_2/ui/Screens/etherem.dart';
import 'package:flutter_application_2/ui/Screens/home.dart';
import 'package:flutter_application_2/ui/widegets/custom_scaffold_market.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widegets/Pages.dart';
import '../widegets/favorite.dart';
import 'market1.dart';

class Preferred_currencies extends StatelessWidget {
  const Preferred_currencies ({Key? key}) : super(key: key);
    static String id = "Preferred_currencies";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(children: [
            //  SizedBox(height: 50,),
      //Image.asset('assets/images/setting.png'),
      ListView(children: [
        
        SizedBox(height: 25,),
        Container(
          width: double.infinity,
          height: 60,
          color: Color(0xFF4B0B8A),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
           IconButton(onPressed: (){
     Navigator.of(context).popUntil((route) => route.settings.name == Home.id);
Navigator.pushNamed(context, Pages.id);  ;
}, icon: Icon(Icons.arrow_back),color: Color(0xFFFFFFFF),
),
              Container(
                              padding: EdgeInsets.only(top: 0, bottom: 10, right: 10, left: 10),
        
                child: Text(
                             "Preferred Currencies",
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
             Row(
              children: [
                     
                           Container(
                    padding: EdgeInsets.only(top: 10, bottom: 20, right:150, left: 15),
                    child: Text(
'Tow currencies',                  style: GoogleFonts.lexendExa(
                        color: Color(0xFF4B0B8A),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      
                      ),
                    ),
                    
      ),
     
IconButton(onPressed: (){
    Navigator.of(context).popUntil((route) => route.settings.name == Market1.id);
Navigator.pushNamed(context, Pages.id);  
}, icon: Icon(Icons.add_circle),color: Color(0xFF4B0B8A),
)

                ]),
               // Image.asset("assets/images/priv1.png"),
                SizedBox(height: 30,),
                  GestureDetector(
                    child: Container(
                              width: 340,
                              height: 80,
                               padding: EdgeInsets.only(top:10,bottom:5,right: 5,left: 10),
                              decoration: BoxDecoration(
                                color: Color(0xFFFFFFFF).withOpacity(0.4),
                                border: Border.all(
                            color: Color(0xFFFAFF00),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10)
                              ),
                              child: Row(
                                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                children: [
                                Image.asset("assets/images/EthMarket.png"),
                                Container(
                                   padding: EdgeInsets.only(top:15,bottom:8,right: 5,left: 10),
                                  child: Column(
                    children: [
                      Text(
                                                   "ETH",
                                                   style: GoogleFonts.lexendExa(
                               color: Color.fromARGB(255, 0, 0, 0),
                                                     fontSize: 10,
                                                     fontWeight: FontWeight.bold,
                                                     
                                                     //fontWeight: FontWeight.bold,
                                                   ),
                                                 
                                                 ),
                                                 Text(
                                                   "+1.3%",
                                                   style: GoogleFonts.lexendExa(
                               color: Color(0xFF534C4C),
                                                     fontSize: 8,
                                                     fontWeight: FontWeight.bold,
                                                     
                                                     //fontWeight: FontWeight.bold,
                                                   ),
                                                 
                                                 ),
                                
                    ],
                                  ),
                                ),
                  
                                 Container( 
                           padding: EdgeInsets.only(top:15,bottom:8,right: 5,left: 10),
                                   child: Column(
                    children: [
                      Text(
                                                   "22.558\$",
                                                   style: GoogleFonts.lexendExa(
                               color: Color.fromARGB(255, 0, 0, 0),
                                                     fontSize: 10,
                                                     fontWeight: FontWeight.bold,
                                                     
                                                     //fontWeight: FontWeight.bold,
                                                   ),
                                                 
                                                 ),
                                                 Text(
                                                   "22.558\$",
                                                   style: GoogleFonts.lexendExa(
                               color: Color(0xFF534C4C),
                                                     fontSize: 8,
                                                     fontWeight: FontWeight.bold,
                                                     
                                                     //fontWeight: FontWeight.bold,
                                                   ),
                                                 
                                                 ),
                                 
                    ],
                               ),
                                 ),
                               Fav()
                  
                              ]),
                             ),
                             onTap: (){
                                                              Navigator.push(context, MaterialPageRoute(builder: (_) => Etherem()));

                             },
                  ),
           SizedBox(height: 20,),
           GestureDetector(
             child: Container(
              width: 340,
              height: 80,
               padding: EdgeInsets.only(top:10,bottom:5,right: 5,left: 10),
              decoration: BoxDecoration(
               color: Color(0xFFFFFFFF).withOpacity(0.4),
                border: Border.all(
                            color: Color(0xFFFAFF00),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                Image.asset("assets/images/BitcoinMarket.png"),
                Container(
                   padding: EdgeInsets.only(top:15,bottom:8,right: 5,left: 10),
                  child: Column(
                    children: [
                      Text(
                                                   "BTC",
                                                   style: GoogleFonts.lexendExa(
                               color: Color.fromARGB(255, 0, 0, 0),
                                                     fontSize: 10,
                                                     fontWeight: FontWeight.bold,
                                                     
                                                     //fontWeight: FontWeight.bold,
                                                   ),
                                                 
                                                 ),
                                                 Text(
                                                   "+1.3%",
                                                   style: GoogleFonts.lexendExa(
                               color: Color(0xFF534C4C),
                                                     fontSize: 8,
                                                     fontWeight: FontWeight.bold,
                                                     
                                                     //fontWeight: FontWeight.bold,
                                                   ),
                                                 
                                                 ),
                
                    ],
                  ),
                ),
           
                 Container( 
                           padding: EdgeInsets.only(top:15,bottom:8,right: 5,left: 10),
                   child: Column(
                    children: [
                      Text(
                                                   "22.558\$",
                                                   style: GoogleFonts.lexendExa(
                               color: Color.fromARGB(255, 0, 0, 0),
                                                     fontSize: 10,
                                                     fontWeight: FontWeight.bold,
                                                     
                                                     //fontWeight: FontWeight.bold,
                                                   ),
                                                 
                                                 ),
                                                 Text(
                                                   "22.558\$",
                                                   style: GoogleFonts.lexendExa(
                               color: Color(0xFF534C4C),
                                                     fontSize: 8,
                                                     fontWeight: FontWeight.bold,
                                                     
                                                     //fontWeight: FontWeight.bold,
                                                   ),
                                                 
                                                 ),
                 
                    ],
                               ),
                 ),
                 Fav()
                
           
              ]),
             ),
             onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (_) => Bitcoin()));

             },
           ),
         
           ],
         )
 ] ) ])));
 }}