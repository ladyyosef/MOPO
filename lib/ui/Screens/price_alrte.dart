import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_2/ui/Screens/nav_pages/nav_bar.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Screens/Wallet6.dart';
import '../Screens/help.dart';
import '../Screens/language.dart';
import '../Screens/preferred_currencies.dart';
import '../Screens/privce.dart';
import '../Screens/profile8.dart';
import '../widegets/Pages.dart';
import '../widegets/switch.dart';
import 'home.dart';
import 'market1.dart';
//import 'custom_market_appbar.dart';
class Price_Alrte extends StatelessWidget {
  const Price_Alrte( {Key? key,   }) : super(key: key);
 static String id = "Price_Alrte";

 // final Widget child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SafeArea(
      child: Scaffold(
         
        
        
        
        
        
   
        body:  Stack(
            children: [
              Image.asset('assets/images/market.png'),
              ListView(
                children: [
                  SizedBox(height: 10),
                 //child,
                /// Nav_Par(),
                /// 
                Column(children: [
                   Container(
                    width: 425,
                    height: 55,
                    color: Colors.white,
                    child: Row(
                      children: [
                               IconButton(onPressed: (){
                              Navigator.of(context).popUntil((route) => route.settings.name == Home.id);
Navigator.pushNamed(context, Pages.id);   



                               }, icon:Icon(Icons.arrow_back)),


                           
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
                              
      Container(  padding: EdgeInsets.only(top:10,bottom:10,right: 10,left:20),
 color: Color.fromARGB(255, 252, 249, 255),             
  width: double.infinity,
                 height: 60,

           child: Text(
              "Price Alrte",
              style: GoogleFonts.leckerliOne(
                color:  Color(0xFF4B0B8A),
                fontSize: 22,
                
                //fontWeight: FontWeight.bold,
              ),
            
            ),
         ),

          Container(
        child: Row
        (//mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Container(
              padding: EdgeInsets.only(top: 5, bottom: 10, right: 10, left: 10),

            child: Image.asset("assets/images/BTC.png")),
           Container(
                    padding: EdgeInsets.only(top: 20, bottom: 20, right: 130, left: 10),

             child: Text(
                     "Bitcoin BTC",
                     style: GoogleFonts.lexendExa(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 14,
              fontWeight: FontWeight.bold,
                     ),
                     
                   ),
           ),
        GestureDetector(child: Icon(Icons.add,color:Color(0xFF4B0B8A)
        ,),
           onTap: () {
  Navigator.of(context).popUntil((route) => route.settings.name == Market1.id);
Navigator.pushNamed(context,Pages.id);           },
        )

        ],)
      ),
      

 SizedBox(height: 20,),
      Container(
        width: 350,
                      //   padding: EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),         color:Colors.white,
      ),
        child:Column(children: [
          Row(
                        children: [
             Container(
                 padding: EdgeInsets.only(top: 10, bottom: 20, right: 10, left: 20),
child: Image.asset("assets/images/GreenAlrte.png")),
               Container(
                     padding: EdgeInsets.only(top:15,bottom:8,right: 5,left: 10),
                    child: Container(
                        padding: EdgeInsets.only(top: 20, bottom: 30, right: 80, left: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                                                       "Above\$ 1100,000",
                                                       style: GoogleFonts.lexendExa(
                                   color: Color.fromARGB(255, 0, 0, 0),
                                                         fontSize: 12,
                                                         fontWeight: FontWeight.bold,
                                                         
                                                         //fontWeight: FontWeight.bold,
                                                       ),
                                                     
                                                     ),
                                                     Text(
                                                       '3 mins ago',
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
                  ),
                
                 Switch1()
          ],),
          Image.asset("assets/images/LineAlrte.png"),
                   Row(
                        children: [
             Container(
                 padding: EdgeInsets.only(top: 10, bottom: 30, right: 10, left: 20),
child: Image.asset("assets/images/GreenAlrte.png")),
               Container(
                     padding: EdgeInsets.only(top:15,bottom:8,right: 5,left: 10),
                    child: Container(
                        padding: EdgeInsets.only(top: 20, bottom: 30, right: 80, left: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                                                       "Above\$ 1100,000",
                                                       style: GoogleFonts.lexendExa(
                                   color: Color.fromARGB(255, 0, 0, 0),
                                                         fontSize: 12,
                                                         fontWeight: FontWeight.bold,
                                                         
                                                         //fontWeight: FontWeight.bold,
                                                       ),
                                                     
                                                     ),
                                                     Text(
                                                       '10 mins ago',
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
                  ),
                 
                 Switch1()
          ],),
          Image.asset("assets/images/LineAlrte.png"),
                   Row(
                        children: [
             Container(
                 padding: EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 20),
child: Image.asset("assets/images/RedAlrte.png")),
               Container(
                     padding: EdgeInsets.only(top:15,bottom:8,right: 5,left: 10),
                    child: Container(
                        padding: EdgeInsets.only(top: 20, bottom: 30, right: 80, left: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                                                       "Above\$ 1100,000",
                                                       style: GoogleFonts.lexendExa(
                                   color: Color.fromARGB(255, 0, 0, 0),
                                                         fontSize: 12,
                                                         fontWeight: FontWeight.bold,
                                                         
                                                         //fontWeight: FontWeight.bold,
                                                       ),
                                                     
                                                     ),
                                                     Text(
                                                       '60 mins ago',
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
                  ),
                 Switch1()
          ],),
       
    
      
      
        ],)
      ),
     
       Container(
        child: Row
        (//mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Container(
              padding: EdgeInsets.only(top: 20, bottom: 10, right: 5, left: 5),

            child: Image.asset("assets/images/ETH.png")),
           Container(
                    padding: EdgeInsets.only(top: 20, bottom: 10, right: 110, left: 10),

             child: Text(
                     "Etherem ETH",
                     style: GoogleFonts.lexendExa(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 14,
              fontWeight: FontWeight.bold,
                     ),
                     
                   ),
           ),
        GestureDetector(child: Icon(Icons.add,color:Color(0xFF4B0B8A),),
   onTap: () {
 Navigator.of(context).popUntil((route) => route.settings.name == Market1.id);
Navigator.pushNamed(context, Pages.id);       },
        )


        ],)

      ),
      

 SizedBox(height: 20,),
      Container(
        width: 350,
                      //   padding: EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),         color:Colors.white,
      ),
        child:Column(children: [
          Row(
                        children: [
             Container(
                 padding: EdgeInsets.only(top: 10, bottom: 20, right: 10, left: 20),
child: Image.asset("assets/images/GreenAlrte.png")),
               Container(
                     padding: EdgeInsets.only(top:15,bottom:8,right: 5,left: 10),
                    child: Container(
                        padding: EdgeInsets.only(top: 20, bottom: 30, right: 80, left: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                                                       "Above\$ 1100,000",
                                                       style: GoogleFonts.lexendExa(
                                   color: Color.fromARGB(255, 0, 0, 0),
                                                         fontSize: 12,
                                                         fontWeight: FontWeight.bold,
                                                         
                                                         //fontWeight: FontWeight.bold,
                                                       ),
                                                     
                                                     ),
                                                     Text(
                                                       '3 mins ago',
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
                  ),
                
                 Switch1()
          ],),
          Image.asset("assets/images/LineAlrte.png"),
                   Row(
                        children: [
             Container(
                 padding: EdgeInsets.only(top: 10, bottom: 30, right: 10, left: 20),
child: Image.asset("assets/images/GreenAlrte.png")),
               Container(
                     padding: EdgeInsets.only(top:15,bottom:8,right: 5,left: 10),
                    child: Container(
                        padding: EdgeInsets.only(top: 20, bottom: 30, right: 80, left: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                                                       "Above\$ 1100,000",
                                                       style: GoogleFonts.lexendExa(
                                   color: Color.fromARGB(255, 0, 0, 0),
                                                         fontSize: 12,
                                                         fontWeight: FontWeight.bold,
                                                         
                                                         //fontWeight: FontWeight.bold,
                                                       ),
                                                     
                                                     ),
                                                     Text(
                                                       '10 mins ago',
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
                  ),
                 
                 Switch1()
          ],),
          Image.asset("assets/images/LineAlrte.png"),
                   Row(
                        children: [
             Container(
                 padding: EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 20),
child: Image.asset("assets/images/RedAlrte.png")),
               Container(
                     padding: EdgeInsets.only(top:15,bottom:8,right: 5,left: 10),
                    child: Container(
                        padding: EdgeInsets.only(top: 20, bottom: 30, right: 80, left: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                                                       "Above\$ 1100,000",
                                                       style: GoogleFonts.lexendExa(
                                   color: Color.fromARGB(255, 0, 0, 0),
                                                         fontSize: 12,
                                                         fontWeight: FontWeight.bold,
                                                         
                                                         //fontWeight: FontWeight.bold,
                                                       ),
                                                     
                                                     ),
                                                     Text(
                                                       '60 mins ago',
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
                  ),
                 Switch1()
          ],),
       
    
      
      
        ],)
      ),
     



                ],),
                ],
              ),
            ],
          ),
      ),
    ));
  }
}