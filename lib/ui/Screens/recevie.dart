import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
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
import 'package:flutter_application_2/ui/Screens/wallet1.dart';
import 'package:flutter_application_2/ui/Screens/wallet6.dart';
import 'package:flutter_application_2/ui/widegets/currencies.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widegets/Pages.dart';
import '../widegets/opration_appbar.dart';
import '../widegets/opration_appbar.dart';


class Recevie extends StatelessWidget {
 Recevie({Key? key}) : super(key: key);
    static String id = "Recevie";

  @override
  Widget build(BuildContext context) {
    return OprationAppbar(
    child: Column(
      children: [
         Container(
          width: 425,
          height: 55,
          color: Colors.white,
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                Navigator.of(context).popUntil((route) => route.settings.name == Wallet6.id);
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
            padding: EdgeInsets.only(top: 30, left: 4, right: 240, bottom: 20),
            child: Text(
              'Recevie',
               style: GoogleFonts.lexend(
                fontSize: 25,
                  color:  Color(0xFF4B0B8A),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
               Container(
            padding: EdgeInsets.only(top: 20, left: 4, right: 290, bottom: 10),
            child: Text(
              'From:',
               style: GoogleFonts.lexend(
                fontSize: 20,
                  color:  Color(0xFF4B0B8A),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
  color:  Color(0xFFE7E7E7).withOpacity(0.8),            width: 350,
            height: 120,
             padding: EdgeInsets.only(top: 40, left: 10, right: 10, bottom: 20),

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
                 Container(

                   child: Column(

                     children: [
                       Text(
                                 'owis aljokeer',
                       style: GoogleFonts.lexend(
                        fontSize: 16,
                          color:  Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                                 ),
                               ),
                                 Text(
                                 'owis@gmail.com',
                       style: GoogleFonts.lexend(
                        fontSize: 14,
                      color:  Color(0xFF4B0B8A),
                        fontWeight: FontWeight.bold,
                                 ),
                               ),
                     ],
                   ),
                 ),
                   Container(

                     child: Column(

                     children: [
                       Text(
                                   '175.50 BTC',
                       style: GoogleFonts.lexend(
                        fontSize: 16,
                          color:  Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                                   ),
                                 ),
                                   Text(
                                   '11/4/2023',
                       style: GoogleFonts.lexend(
                        fontSize: 16,
                      color:  Color(0xFF4B0B8A),
                        fontWeight: FontWeight.bold,
                                   ),
                                 ),
                                  Text(
                                   '8:45pm',
                       style: GoogleFonts.lexend(
                        fontSize: 14,
                      color:  Color(0xFF4B0B8A),
                        fontWeight: FontWeight.bold,
                                   ),
                                 ),
                     ],
                                    ),
                   ),
              ],
            ),
          ), SizedBox(height: 10,),
               Container(
       color:  Color(0xFFE7E7E7).withOpacity(0.8),
            width: 350,
            height: 120,
             padding: EdgeInsets.only(top: 40, left: 10, right: 10, bottom: 20),

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
                 Container(

                   child: Column(

                     children: [
                       Text(
                                 'Dived bekham',
                       style: GoogleFonts.lexend(
                        fontSize: 16,
                          color:  Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                                 ),
                               ),
                                 Text(
                                 'dived@gmail.com',
                       style: GoogleFonts.lexend(
                        fontSize: 14,
                      color:  Color(0xFF4B0B8A),
                        fontWeight: FontWeight.bold,
                                 ),
                               ),
                     ],
                   ),
                 ),
                   Container(

                     child: Column(

                     children: [
                       Text(
                                   '180.25 usdt',
                       style: GoogleFonts.lexend(
                        fontSize: 16,
                          color:  Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                                   ),
                                 ),
                                   Text(
                                   '1/1/2023',
                       style: GoogleFonts.lexend(
                        fontSize: 16,
                      color:  Color(0xFF4B0B8A),
                        fontWeight: FontWeight.bold,
                                   ),
                                 ),
                                  Text(
                                   '6:00pm',
                       style: GoogleFonts.lexend(
                        fontSize: 14,
                      color:  Color(0xFF4B0B8A),
                        fontWeight: FontWeight.bold,
                                   ),
                                 ),
                     ],
                                    ),
                   ),
              ],
            ),
          ),
           SizedBox(height: 110,),

            Container(
width: 280,
                height: 55,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
            color: Color(0xFF4B0B8A),),
            child: MaterialButton(
              onPressed: () {
              
                
                    Navigator.of(context).popUntil((route) => route.settings.name == Wallet6.id);
Navigator.pushNamed(context, Pages.id);  
              },
              child: Text(
                'check your wallet',
                style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
      ],
    ),
    );
  }
}
