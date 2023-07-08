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
import 'package:flutter_application_2/ui/Screens/trade2.dart';
import 'package:flutter_application_2/ui/Screens/trade4.dart';
import 'package:flutter_application_2/ui/Screens/trade5.dart';
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
import '../widegets/opration_appbar.dart';
import '../widegets/Pages.dart';


class Trade1 extends StatelessWidget {
  const Trade1({Key? key}) : super(key: key);
  static String id = "Trade1";

  @override
  Widget build(BuildContext context) {
    return OprationAppbar(
        child: Column(children: [
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
      Container(
        padding: EdgeInsets.only(top: 30, left: 12, right: 250, bottom: 20),
        child: Text(
          'Trade:',
          style: GoogleFonts.lexend(
            fontSize: 25,
            color: Color(0xFF4B0B8A),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Container(
        color: Color(0xFFD9D9D9),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 180,
              height: 45,
              //padding: EdgeInsets.only(top:5,bottom:5,right: 1,left: 10),
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                border: Border(
                  bottom: BorderSide(
                    //                    <--- top side
                    color: Color(0xFF6C696F),

                    width: 3.0,
                  ),
                ),
              ),

              //borderRadius: BorderRadius.circular(15),

              child: TextButton(
                  onPressed: () {
                    Navigator.of(context).popUntil((route) => route.settings.name ==Trade2.id);
Navigator.pushNamed(context, Trade2.id);  
                  },
                  child: Text(
                    'Your Offers',
                    style: GoogleFonts.inter(
                      color: Color(0xFF6C696F),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ),
            Container(
              width: 180,
              height: 45,
              //padding: EdgeInsets.only(top:5,bottom:5,right: 1,left: 10),
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                border: Border(
                  bottom: BorderSide(
                    //                    <--- top side
                    color: Color(0xFF4B0B8A),

                    width: 3.0,
                  ),
                ),
              ),

              //borderRadius: BorderRadius.circular(15),

              child: TextButton(
                  onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (_) => Trade1()));
 
                  },
                  child: Text(
                    'Offers',
                    style: GoogleFonts.inter(
                      color: Color(0xFF4B0B8A),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          color: Color(0xFFE7E7E7).withOpacity(0.8),
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFFAFF00), width: 2),
                    borderRadius: BorderRadius.circular(30)),
                child: CircleAvatar(
                  maxRadius: 25,
                  minRadius: 25,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    size: 45,
                    color: Color(0xFF4B0B8A),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
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
                      SizedBox(
                        width: 5,
                      ),
                      Image.asset('assets/images/NeoT1.png'),
                    ],
                  ),
                  Text(
                    "+1.9%",
                    style: GoogleFonts.lexendExa(
                      color: Color(0xFF149839),
                      fontSize: 10,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.swap_horizontal_circle_sharp,
                size: 25,
                color: Color(0xFF4B0B8A),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "           ",
                    style: GoogleFonts.lexendExa(
                      color: Color(0xFF149839),
                      fontSize: 10,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "190.25USDT",
                        style: GoogleFonts.lexendExa(
                          color: Color(0xFF4B0B8A),
                          fontSize: 10,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Image.asset('assets/images/UsdtT1.png'),
                    ],
                  ),
                  Text(
                    "+1.1%",
                    style: GoogleFonts.lexendExa(
                      color: Color(0xFF149839),
                      fontSize: 10,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(
                width: 55,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Color(0xFF4B0B8A),
                ),
                child: MaterialButton(
                  onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (_) => Trade5()));
  
                  },
                  child: Text(
                    'GET',
                    style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          color: Color(0xFFE7E7E7).withOpacity(0.8),
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFFAFF00), width: 2),
                    borderRadius: BorderRadius.circular(30)),
                child: CircleAvatar(
                  maxRadius: 25,
                  minRadius: 25,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    size: 45,
                    color: Color(0xFF4B0B8A),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Minso aho",
                    style: GoogleFonts.lexendExa(
                      color: Color(0xFF4B0B8A),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "190.25LIT",
                        style: GoogleFonts.lexendExa(
                          color: Color(0xFF4B0B8A),
                          fontSize: 10,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Image.asset('assets/images/LitT1.png'),
                    ],
                  ),
                  Text(
                    "+1.9%",
                    style: GoogleFonts.lexendExa(
                      color: Color(0xFF149839),
                      fontSize: 10,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.swap_horizontal_circle_sharp,
                size: 25,
                color: Color(0xFF4B0B8A),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "           ",
                    style: GoogleFonts.lexendExa(
                      color: Color(0xFF149839),
                      fontSize: 10,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "190.25ETH",
                        style: GoogleFonts.lexendExa(
                          color: Color(0xFF4B0B8A),
                          fontSize: 10,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Image.asset('assets/images/EthT1.png'),
                    ],
                  ),
                  Text(
                    "+1.1%",
                    style: GoogleFonts.lexendExa(
                      color: Color(0xFF149839),
                      fontSize: 10,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(
                width: 55,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Color(0xFF4B0B8A),
                ),
                child: MaterialButton(
                  onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (_) => Trade5()));
 
                  },
                  child: Text(
                    'GET',
                    style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          color: Color(0xFFE7E7E7).withOpacity(0.8),
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFFAFF00), width: 2),
                    borderRadius: BorderRadius.circular(30)),
                child: CircleAvatar(
                  maxRadius: 25,
                  minRadius: 25,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    size: 45,
                    color: Color(0xFF4B0B8A),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Tsuro assd",
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
                      SizedBox(
                        width: 5,
                      ),
                      Image.asset('assets/images/NeoT1.png'),
                    ],
                  ),
                  Text(
                    "+1.9%",
                    style: GoogleFonts.lexendExa(
                      color: Color(0xFF149839),
                      fontSize: 10,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.swap_horizontal_circle_sharp,
                size: 25,
                color: Color(0xFF4B0B8A),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "           ",
                    style: GoogleFonts.lexendExa(
                      color: Color(0xFF149839),
                      fontSize: 10,
                      //fontWeight: FontWeight.bold,
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
                      SizedBox(
                        width: 5,
                      ),
                      Image.asset('assets/images/BtcT.png'),
                    ],
                  ),
                  Text(
                    "+1.1%",
                    style: GoogleFonts.lexendExa(
                      color: Color(0xFF149839),
                      fontSize: 10,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(
                width: 55,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Color(0xFF4B0B8A),
                ),
                child: MaterialButton(
                  onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (_) => Trade5()));

                  },
                  child: Text(
                    'GET',
                    style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          color: Color(0xFFE7E7E7).withOpacity(0.8),
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFFAFF00), width: 2),
                    borderRadius: BorderRadius.circular(30)),
                child: CircleAvatar(
                  maxRadius: 25,
                  minRadius: 25,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    size: 45,
                    color: Color(0xFF4B0B8A),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "ohany barj",
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
                      SizedBox(
                        width: 5,
                      ),
                      Image.asset('assets/images/BtcT.png'),
                    ],
                  ),
                  Text(
                    "+1.9%",
                    style: GoogleFonts.lexendExa(
                      color: Color(0xFF149839),
                      fontSize: 10,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.swap_horizontal_circle_sharp,
                size: 25,
                color: Color(0xFF4B0B8A),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "           ",
                    style: GoogleFonts.lexendExa(
                      color: Color(0xFF149839),
                      fontSize: 10,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "190.25XRP",
                        style: GoogleFonts.lexendExa(
                          color: Color(0xFF4B0B8A),
                          fontSize: 10,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Image.asset('assets/images/XrpT1.png'),
                    ],
                  ),
                  Text(
                    "+1.1%",
                    style: GoogleFonts.lexendExa(
                      color: Color(0xFF149839),
                      fontSize: 10,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(
                width: 55,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Color(0xFF4B0B8A),
                ),
                child: MaterialButton(
                  onPressed: () {
                         Navigator.push(context, MaterialPageRoute(builder: (_) => Trade5()));
  
                  },
                  child: Text(
                    'GET',
                    style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          color: Color(0xFFE7E7E7).withOpacity(0.8),
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFFAFF00), width: 2),
                    borderRadius: BorderRadius.circular(30)),
                child: CircleAvatar(
                  maxRadius: 25,
                  minRadius: 25,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    size: 45,
                    color: Color(0xFF4B0B8A),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Jak wellllem",
                    style: GoogleFonts.lexendExa(
                      color: Color(0xFF4B0B8A),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "190.25ETH",
                        style: GoogleFonts.lexendExa(
                          color: Color(0xFF4B0B8A),
                          fontSize: 10,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Image.asset('assets/images/EthT1.png'),
                    ],
                  ),
                  Text(
                    "+1.9%",
                    style: GoogleFonts.lexendExa(
                      color: Color(0xFF149839),
                      fontSize: 10,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.swap_horizontal_circle_sharp,
                size: 25,
                color: Color(0xFF4B0B8A),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "           ",
                    style: GoogleFonts.lexendExa(
                      color: Color(0xFF149839),
                      fontSize: 10,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "190.25USDT",
                        style: GoogleFonts.lexendExa(
                          color: Color(0xFF4B0B8A),
                          fontSize: 10,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Image.asset('assets/images/UsdtT1.png'),
                    ],
                  ),
                  Text(
                    "+1.1%",
                    style: GoogleFonts.lexendExa(
                      color: Color(0xFF149839),
                      fontSize: 10,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(
                width: 55,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Color(0xFF4B0B8A),
                ),
                child: MaterialButton(
                  onPressed: () {
                         Navigator.push(context, MaterialPageRoute(builder: (_) => Trade5()));
  
                  },
                  child: Text(
                    'GET',
                    style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          color: Color(0xFFE7E7E7).withOpacity(0.8),
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFFAFF00), width: 2),
                    borderRadius: BorderRadius.circular(30)),
                child: CircleAvatar(
                  maxRadius: 25,
                  minRadius: 25,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    size: 45,
                    color: Color(0xFF4B0B8A),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Bora Depora",
                    style: GoogleFonts.lexendExa(
                      color: Color(0xFF4B0B8A),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "190.25XRP",
                        style: GoogleFonts.lexendExa(
                          color: Color(0xFF4B0B8A),
                          fontSize: 10,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Image.asset('assets/images/XrpT1.png'),
                    ],
                  ),
                  Text(
                    "+1.9%",
                    style: GoogleFonts.lexendExa(
                      color: Color(0xFF149839),
                      fontSize: 10,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.swap_horizontal_circle_sharp,
                size: 25,
                color: Color(0xFF4B0B8A),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "           ",
                    style: GoogleFonts.lexendExa(
                      color: Color(0xFF149839),
                      fontSize: 10,
                      //fontWeight: FontWeight.bold,
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
                      SizedBox(
                        width: 5,
                      ),
                      Image.asset('assets/images/BtcT.png'),
                    ],
                  ),
                  Text(
                    "+1.1%",
                    style: GoogleFonts.lexendExa(
                      color: Color(0xFF149839),
                      fontSize: 10,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(
                width: 55,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Color(0xFF4B0B8A),
                ),
                child: MaterialButton(
                  onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) => Trade5()));
  
                  },
                  child: Text(
                    'GET',
                    style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  //
                  padding:
                      EdgeInsets.only(top: 10, bottom: 20, right: 5, left: 20),
                  child: Text(
                    "Create your own offer",
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
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TextButton(
                      onPressed: () {
                             Navigator.push(context, MaterialPageRoute(builder: (_) => Trade5()));
 
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
            SizedBox(
              width: 30,
            ),
            Container(
                width: 150,
                height: 160,
                padding:
                    EdgeInsets.only(top: 20, bottom: 30, right: 0, left: 0),
                child: Image.asset("assets/images/Trade1.png")),
          ],
        ),
      ])
    ]));
  }
}
