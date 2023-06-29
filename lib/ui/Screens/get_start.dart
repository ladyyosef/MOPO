import 'package:flutter/material.dart';
import 'package:flutter_application_2/ui/Screens/buy.dart';
import 'package:flutter_application_2/ui/Screens/home.dart';
import 'package:flutter_application_2/ui/Screens/profile2.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_2/ui/Screens/profile1.dart';

import 'package:flutter_application_2/ui/widegets/custom_appbar.dart';

import '../widegets/Pages.dart';
import 'admin_wallet1.dart';
import 'lit.dart';
import 'new.dart';

class Get_Start extends StatelessWidget {
  const Get_Start({Key? key}) : super(key: key);
  static String id = "Get_Start";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          'assets/images/Rectangle.png',
          fit: BoxFit.cover,
        ),
        ListView(
          children: [
            SizedBox(height: 10),
            Container(
                padding:
                    EdgeInsets.only(top: 11, bottom: 10, right: 10, left: 240),
                // width: 425,
                //height: 69,
                color: Colors.white,
                child: Image.asset('assets/images/LogoHome.png')),
            Column(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 80,
                ),

                Column(
                  // mainAxisSize: MainAxisSize.min,
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 100,
                    ),

                    Image.asset(
                      'assets/images/cantar_start.png',
                      fit: BoxFit.cover,
                    ),
                    // SizedBox(height: 2,),

                    Container(
                        color: Colors.white,
                        width: 429,
                        height: 96,
                        child: Center(
                          child: Text(
                            'Welcom to Mopo',
                            style: GoogleFonts.leckerliOne(
                              color: Colors.black,
                              fontSize: 30,
                              backgroundColor: Colors.white,
                              // shadows:
                              // [
                              //  Shadow(color:Colors.purple,
                              // blurRadius: 10.0)
                              //  ]
                            ),
                          ),
                        )), //SizedBox(height: 200,)
                  ],
                ),
                SizedBox(
                  height: 50,
                ),

                Container(
                  width: 235,
                  height: 55,
                  child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Color(0xFF4B0B8A),
                        onSurface: Colors.purple,
                        minimumSize: Size(10, 10),

                        // padding:
                        // EdgeInsets.symmetric(horizontal: 27, vertical: 13.0),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(45)),
                        ),
                      ),
                      onPressed: () async {
                        Navigator.of(context).popUntil(
                            (route) => route.settings.name == Profile1.id);
                        Navigator.pushNamed(context, Profile1.id);
                      },
                      child: Center(
                        child: Text('Get start',
                            style: GoogleFonts.lexendExa(
                              color: Colors.white,
                              fontSize: 25,

                              // backgroundColor: Colors.white,
                            )),
                      )),
                ),
                //InkWell(
                //child: Container(
                // child: Text("Click"),

                // ),
                // )
              ],
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ],
    ));
  }
}
