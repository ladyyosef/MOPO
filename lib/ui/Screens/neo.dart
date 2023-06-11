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
import 'buy.dart';
import 'market1.dart';
import 'nav_pages/test1.dart';

class Neo extends StatelessWidget {
  const Neo({Key? key}) : super(key: key);
      static String id = "Neo";

  @override
  Widget build(BuildContext context) {
    return Currencies(
        child: Column(children: [
          Container(
        width: 425,
        height: 55,
        color: Colors.white,
        child: Row(
          children: [
            IconButton(
                onPressed: () {
                   Navigator.of(context).popUntil((route) => route.settings.name == Market1.id);
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
      SizedBox(
        height: 20,
      ),
     
      Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              width: 100,
              height: 60,
              child: Image.asset('assets/images/NeoC.png')),
          Column(
            children: [
              Container(
                padding:
                    EdgeInsets.only(top: 10, bottom: 10, right: 30, left: 5),
                child: Text(
                  "Neo    ",
                  style: GoogleFonts.lexendExa(
                    color: Color(0xFF4B0B8A),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "22.558\$",
                style: GoogleFonts.lexendExa(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,

                  //fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "22.558\$",
                style: GoogleFonts.lexendExa(
                  color: Color(0xFF534C4C),
                  fontSize: 10,
                  fontWeight: FontWeight.bold,

                  //fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            padding: EdgeInsets.only(top: 6, bottom: 6, right: 6, left: 6),
            decoration: BoxDecoration(
                color: Color(0xFFFFFFFF).withOpacity(0.4),
                border: Border.all(
                  color: Color(0xFF4B0B8A),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_circle_up_outlined,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "2.0",
                  style: GoogleFonts.lexendExa(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
           ff(),

      Container(
        padding: EdgeInsets.only(top: 20, bottom: 30, right: 180, left: 10),
        child: Text(
          "MARKET OVERVIEW ",
          style: GoogleFonts.lexendExa(
            color: Color(0xFF4B0B8A),
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.only(top: 10, bottom: 10, right: 180, left: 20),
        width: double.infinity,
        color: Colors.white,
        child: Text(
          "Market Cap ",
          style: GoogleFonts.lexendExa(
            color: Color(0xFF4B0B8A),
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "Neo       ",
            style: GoogleFonts.lexendExa(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(
            Icons.arrow_circle_up_outlined,
            color: Colors.green,
          ),
          Text(
            "2.0",
            style: GoogleFonts.lexendExa(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
          Image.asset('assets/images/GreenC.png'),
          Text(
            "22.558\$",
            style: GoogleFonts.lexendExa(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Container(
        padding: EdgeInsets.only(top: 10, bottom: 10, right: 180, left: 20),
        width: double.infinity,
        color: Colors.white,
        child: Text(
          "Recent view ",
          style: GoogleFonts.lexendExa(
            color: Color(0xFF4B0B8A),
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "Neo   ",
            style: GoogleFonts.lexendExa(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "09:48 pm",
            style: GoogleFonts.lexendExa(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Completed",
            style: GoogleFonts.lexendExa(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Container(
        //padding: EdgeInsets.only(top:10,bottom:10,right: 10,left: 10),
        width: 80,
        height: 40,
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
          borderRadius: BorderRadius.circular(15),
        ),
        child: TextButton(
            onPressed: () {
                  Navigator.of(context).popUntil((route) => route.settings.name == Buy.id);
Navigator.pushNamed(context, Buy.id);  
            },
            child: Text(
              'Buy',
              style: GoogleFonts.lexendExa(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            )),
      ),
    ]));
  }
}
