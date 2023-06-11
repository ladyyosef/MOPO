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
import 'package:flutter_application_2/ui/widegets/custom_scaffold_market.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_2/ui/widegets/custom_appbar.dart';

class Notifi extends StatelessWidget {
  const Notifi({Key? key}) : super(key: key);
    static String id = "Notifi";

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              child: Image.asset('assets/images/logout11.png',width: double.infinity)),
            ListView(
              children: [
                SizedBox(height: 10),
                CustomAppbar(),
                SizedBox(height: 100,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
 Container(  padding: EdgeInsets.only(top:20,bottom:50,right: 210,left:30),

           child: Text(
              "Notification",
              style: GoogleFonts.lexendExa(
                 color: Colors.white,
                fontSize: 19,
                
                fontWeight: FontWeight.bold,
              ),
            
            ),
         ),
                    Center(
                      
                      child: Container(
                       padding: EdgeInsets.only(top: 20, bottom: 20, right: 10, left: 20),
                        width: 310,
                        height: 80,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        border: Border.all(
                          color: Color(0xFFFAFF00),
                          width: 4,
                        )
                        ),
                        
                      //  color: Colors.white,
                        child: Row(
                          children: [
                         
                          
                             Container(
                                        // padding: EdgeInsets.only(top: 1, bottom: 20, right: 250, left: 10),
                                        child: Text(
                        'Your wallet is about to expire',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(width: 40,),
                                      Icon(Icons.warning_amber,color: Colors.red,)
                          ],
                        ),
                      ),
                      
                    ),
                    SizedBox(height: 20,),
                     Center(
                      child: Container(
                       padding: EdgeInsets.only(top: 20, bottom: 20, right: 10, left: 20),
                        width: 310,
                        height: 80,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        border: Border.all(
                          color: Color(0xFFFAFF00),
                          width: 4,
                        )
                        ),
                        
                      //  color: Colors.white,
                        child: Row(
                          children: [
                         
                          
                             Container(
                                        // padding: EdgeInsets.only(top: 1, bottom: 20, right: 250, left: 10),
                                        child: Text(
                        'Huge rise in Bitcoin',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(width: 100,),
                                      Icon(Icons.trending_up,color: Colors.green,)
                          ],
                        ),
                      ),
                      
                    ),
                    SizedBox(height: 20,),
                     Center(
                      child: Container(
                       padding: EdgeInsets.only(top: 20, bottom: 20, right: 10, left: 20),
                        width: 310,
                        height: 80,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        border: Border.all(
                          color: Color(0xFFFAFF00),
                          width: 4,
                        )
                        ),
                        
                      //  color: Colors.white,
                        child: Row(
                          children: [
                         
                          
                             Container(
                                        // padding: EdgeInsets.only(top: 1, bottom: 20, right: 250, left: 10),
                                        child: Text(
                        'New offers are waiting for you',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(width: 40,),
                                      Icon(Icons.new_label,color: Colors.orange,)
                          ],
                        ),
                      ),
                      
                    ),
                   
                    
                      

                  ],

                ),
                

                
              ],
            ),
          ],
        ),
        
      ),
    );
  }
}