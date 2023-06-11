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
import 'package:flutter_application_2/ui/Screens/home.dart';
import 'package:flutter_application_2/ui/Screens/lit.dart';
import 'package:flutter_application_2/ui/Screens/market1.dart';
import 'package:flutter_application_2/ui/Screens/market3.dart';
import 'package:flutter_application_2/ui/Screens/usdt.dart';
import 'package:flutter_application_2/ui/widegets/custom_scaffold_market.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widegets/Pages.dart';

class Market2 extends StatelessWidget {
  const Market2({Key? key}) : super(key: key);
    static String id = "Market2";

  @override
  Widget build(BuildContext context) {
    return CustomScaffoldMarket(
        child: Column(children: [
           
      Container(
        padding: EdgeInsets.only(top: 20, bottom: 30, right: 220, left: 10),
        child: Text(
          "Market",
          style: GoogleFonts.lexendExa(
            color: Color(0xFF4B0B8A),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
       GestureDetector(
          child: Container(
            width: 300,
            height: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
            border: Border.all(width: 1, color: Color(0xFF4B0B8A),
),
            color: Colors.white),
            child: Row(children: [
              Icon(Icons.search),
               Text(
                          "Search currencies",
                          style: GoogleFonts.lexendExa(
              color: Color(0xFF4B0B8A),
                            fontSize: 11,
                            //fontWeight: FontWeight.bold,

                            //fontWeight: FontWeight.bold,
                          ),)
            ],),
          ),
          onTap: () {
            showSearch(context: context, delegate: CustomSearch());
            Navigator.pushNamed(context, Pages.id);  

          },
        ),
      Container(
        padding: EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              //padding: EdgeInsets.only(top:10,bottom:10,right: 100,left: 10),

              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              width: 90,
              height: 55,
              child: Center(
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: 10, bottom: 5, right: 5, left: 5),
                        child: Text(
                          "Watchlist",
                          style: GoogleFonts.lexendExa(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 8,
                            fontWeight: FontWeight.bold,
                
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.list,
                        color: Color(0xFF4ECB71),size: 18,
                      ),
                    ],
                  ),
                  onTap: (){
                           Navigator.of(context).popUntil((route) => route.settings.name == Market1.id);
Navigator.pushNamed(context, Pages.id);  
                  },
                ),
              ),
            ),
            Container(
              //padding: EdgeInsets.only(top:10,bottom:10,right: 100,left: 10),

              decoration: BoxDecoration(
                  color: Color(0xFFEDE6E6),
                  borderRadius: BorderRadius.circular(10)),
              width: 90,
              height: 55,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          top: 10, bottom: 5, right: 5, left: 10),
                      child: Text(
                        "Best Value",
                        style: GoogleFonts.lexendExa(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 8,
                          fontWeight: FontWeight.bold,

                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xFFFAFF00),size: 16,
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              child: Container(
                //padding: EdgeInsets.only(top:10,bottom:10,right: 100,left: 10),
            
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(10)),
                width: 90,
                height: 55,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: 10, bottom: 5, right: 5, left: 10),
                        child: Text(
                          "Trending",
                          style: GoogleFonts.lexendExa(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
            
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.arrow_circle_up_rounded,
                        color: Color(0xFF699BF7),size: 18,
                      ),
                    ],
                  ),
                ),
              ),
                onTap: (){
                          Navigator.of(context).popUntil((route) => route.settings.name == Market3.id);
Navigator.pushNamed(context, Market3.id);  
                  },
            ),
          ],
        ),
      ),
      SizedBox(
        height: 30,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            child: Container(
              width: 350,
              height: 80,
              padding: EdgeInsets.only(top: 10, bottom: 5, right: 5, left: 10),
              decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/UsdtMarket.png"),
                  Text(
                    "USDT",
                    style: GoogleFonts.inter(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
          
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.arrow_circle_up,
                    color: Color(0xFF4ECB71),
                  ),
                  Text(
                    "+2.2",
                    style: GoogleFonts.inter(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
          
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.asset("assets/images/GreenM2.png"),
                  Text(
                    "22.558\$",
                    style: GoogleFonts.inter(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
          
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
              onTap: (){
                           Navigator.of(context).popUntil((route) => route.settings.name == Usdt.id);
Navigator.pushNamed(context, Usdt.id);  
                  },
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            child: Container(
              width: 350,
              height: 80,
              padding: EdgeInsets.only(top: 10, bottom: 5, right: 5, left: 10),
              decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/BitcoinMarket.png"),
                  Text(
                    "BTC",
                    style: GoogleFonts.inter(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
          
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.arrow_circle_up,
                    color: Color(0xFF4ECB71),
                  ),
                  Text(
                    "1.2",
                    style: GoogleFonts.inter(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
          
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.asset("assets/images/GreenM2.png"),
                  Text(
                    "22.558\$",
                    style: GoogleFonts.inter(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
          
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
              onTap: (){
                            Navigator.of(context).popUntil((route) => route.settings.name == Bitcoin.id);
Navigator.pushNamed(context, Bitcoin.id);  
                  },
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            child: Container(
              width: 350,
              height: 80,
              padding: EdgeInsets.only(top: 10, bottom: 5, right: 5, left: 10),
              decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/LitMarket.png"),
                  Text(
                    "LIT",
                    style: GoogleFonts.inter(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
          
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.arrow_circle_down,
                    color: Color.fromARGB(255, 203, 78, 78),
                  ),
                  Text(
                    "0.4",
                    style: GoogleFonts.inter(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
          
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.asset("assets/images/RedM2.png"),
                  Text(
                    "22.558\$",
                    style: GoogleFonts.inter(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
          
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
              onTap: (){
                            Navigator.of(context).popUntil((route) => route.settings.name == Lit.id);
Navigator.pushNamed(context, Lit.id);  
                  },
          ),
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                 //
                    padding: EdgeInsets.only(
                        top: 10, bottom: 20, right: 5, left: 20),
                    child: Text(
                      "Learn about all currencies",
                      style: GoogleFonts.lexendExa(
                        color: Color(0xFF4B0B8A),
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        stops: [
                          0.5,
                          0.5,
                        ],
                        colors: [
                          Color(0xFF9747FF),
                          Color(0xFF9747FF),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: TextButton(
                        onPressed: () {
                           
                           Navigator.of(context).popUntil((route) => route.settings.name == Market3.id);
Navigator.pushNamed(context, Market3.id);  
                  
                        },
                        child: Text(
                          'now',
                          style: GoogleFonts.lexendExa(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  )
                ],
              ),
              Container(
                 width:150 ,
                 height: 160,
                  padding:
                      EdgeInsets.only(top: 20, bottom: 30, right: 0, left: 0),
                  child: Image.asset("assets/images/Rmarket.png")),
            ],
          ),
        ],
      ),
    ]));
  }
}
