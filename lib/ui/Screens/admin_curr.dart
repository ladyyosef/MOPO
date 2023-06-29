import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widegets/currencies.dart';
import 'admin_wallet4.dart';

class AdminCurr extends StatelessWidget {
   AdminCurr({Key? key}) : super(key: key);
  static String id = "AdminCurr";
    var TodayPrice = TextEditingController();
    var MarketCap = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Currencies(child: Column(children: [
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
      Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              width: 100,
              height: 60,
              child: Image.asset('assets/images/BtcC.png')),
          Column(
            children: [
              Container(
                padding:
                    EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 5),
                child: Text(
                  "Bitcoin BTC",
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
                  width: 5,
                ),
                Text(
                  "2.0",
                  style: GoogleFonts.lexendExa(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

           Container(
            padding: EdgeInsets.only(top: 10, left: 10, right: 270, bottom: 10),
            child: Text(
              'Today Price :',
               style: GoogleFonts.lexend(
                fontSize: 18,
                  color:  Color(0xFF4B0B8A),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
            Container(
                width: 320,
                height: 60,
                child: TextFormField(
                  controller: TodayPrice,
                  keyboardType: TextInputType.number,
                  obscureText: false,
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
                   //suffix: Icon(Icons.show_chart_outlined),
                  ),
               
                ),
              ),
                Container(
            padding: EdgeInsets.only(top: 10, left: 10, right: 290, bottom: 10),
            child: Text(
              'Market Cap :',
               style: GoogleFonts.lexend(
                fontSize: 18,
                  color:  Color(0xFF4B0B8A),
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
            "Bitcoin(btc)",
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
          Container(
                width: 65,
                height: 45,
                child: TextFormField(
                  controller: MarketCap ,
                  keyboardType: TextInputType.number,
                  obscureText: false,
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
                    //suffix: Icon(Icons.show_chart_outlined),
                  ),
               
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
        padding: EdgeInsets.only(top: 10, bottom: 10, right: 160, left: 20),
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
            "Bitcoin(btc)",
            style: GoogleFonts.lexendExa(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
         Container(
                width: 65,
                height: 45,
                child: TextFormField(
                  controller: MarketCap ,
                  keyboardType: TextInputType.number,
                  obscureText: false,
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
                    //suffix: Icon(Icons.show_chart_outlined),
                  ),
               
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

    ]),);
  }
}