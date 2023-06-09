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
import 'package:flutter_application_2/ui/Screens/buy.dart';
import 'package:flutter_application_2/ui/Screens/etherem.dart';
import 'package:flutter_application_2/ui/Screens/lit.dart';
import 'package:flutter_application_2/ui/Screens/neo.dart';
import 'package:flutter_application_2/ui/Screens/preferred_currencies.dart';
import 'package:flutter_application_2/ui/Screens/privce.dart';
import 'package:flutter_application_2/ui/Screens/profile8.dart';
import 'package:flutter_application_2/ui/Screens/recevie.dart';
import 'package:flutter_application_2/ui/Screens/send.dart';
import 'package:flutter_application_2/ui/Screens/trade1.dart';
import 'package:flutter_application_2/ui/Screens/usdt.dart';
import 'package:flutter_application_2/ui/widegets/currencies.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widegets/Pages.dart';
import '../widegets/wallet_appbar.dart';
import 'Wallet7.dart';
import 'Wallet8.dart';
import 'help.dart';
import 'language.dart';
//mport 'package:flutter_application_2/ui/widegets/wallet_abbpar.dart';

class Wallet6 extends StatefulWidget {
  const Wallet6({key});
    static String id = "Wallet6";

  @override
  State<Wallet6> createState() => _Wallet6State();
}

class _Wallet6State extends State<Wallet6> {
  @override
  Widget build(BuildContext context) {
    return 
        SafeArea(
          child:
          Scaffold(
              appBar: AppBar(backgroundColor: Colors.white,
           iconTheme: IconThemeData(color: Colors.black), 
        actions: [
Container(
                    width: 120,
                    height: 100,
                    child: Image.asset('assets/images/LogoHome.png')),
      ], ),
    drawer:
    Drawer(
      backgroundColor:Colors.white,
      child: Padding(padding: EdgeInsets.only(left: 15,right: 15,top: 50),
      child: Column(children: [
        Row(children: [
          Container(
            decoration: BoxDecoration(border: Border.all( color: Color(0xFFFAFF00),width: 2 ),borderRadius: BorderRadius.circular(30)),
            child: CircleAvatar(
              maxRadius: 30,
              minRadius: 30,
              
              backgroundColor: Colors.white,
              child: Icon(Icons.person,size: 45,color: Color(0xFF4B0B8A),),
              
          
            ),
            
          ),
          SizedBox(width: 20,),
          Text(
                  'lady abo alenin',
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF4B0B8A),
                      fontWeight: FontWeight.bold),
                ),
        ],),
        Divider(color: Color(0xFFFAFF00),thickness: 4,),
          SizedBox(height: 20,),
           GestureDetector(
             child: Container(
              height: 55,
                      color: Color(0xFFFAFF00).withOpacity(0.4),
               child: Row(children: [
                     
                  
                   Icon(Icons.lock,size: 25,color: Color(0xFFFB8C00),),
                  
                       
                       
                       SizedBox(width: 12,),
                       Text(
                      'Privacy and protection',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF000000),
                          //fontWeight: FontWeight.bold
                          ),
                    ),
                     ],),
             ),
             onTap: (){   Navigator.of(context).popUntil((route) => route.settings.name == Privce.id);
Navigator.pushNamed(context, Privce.id);     },


           ),
             SizedBox(height: 6,),
            Divider(color: Color(0xFFFAFF00),),
          SizedBox(height: 12,),
                      GestureDetector(
             child: Container(
              height: 55,
                      color: Color(0xFFFAFF00).withOpacity(0.4),
               child: Row(children: [
                     
                  
                   Icon(Icons.language,size: 25,color: Color(0xFF008AFB),),
                  
                       
                       
                       SizedBox(width: 12,),
                       Text(
                      'Language',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF000000),
                          //fontWeight: FontWeight.bold
                          ),
                    ),
                     ],),
             ),
             onTap: (){   Navigator.of(context).popUntil((route) => route.settings.name == Language.id);
Navigator.pushNamed(context, Language.id);     },
           ),
            SizedBox(height: 6,),
            Divider(color: Color(0xFFFAFF00),),
          SizedBox(height: 12,),
                      GestureDetector(
             child: Container(
              height: 55,
                      color: Color(0xFFFAFF00).withOpacity(0.4),
               child: Row(children: [
                     
                  
                   Icon(Icons.favorite,size: 25,color: Color(0xFFEE4F41),),
                  
                       
                       
                       SizedBox(width: 12,),
                       Text(
                      'Preferred Currencies',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF000000),
                          //fontWeight: FontWeight.bold
                          ),
                    ),
                     ],),
             ),
             onTap: (){   Navigator.of(context).popUntil((route) => route.settings.name == Preferred_currencies.id);
Navigator.pushNamed(context, Preferred_currencies.id);     },
           ), 
            SizedBox(height: 6,),
            Divider(color: Color(0xFFFAFF00)),
          SizedBox(height: 12,),          GestureDetector(
             child: Container(
              height: 55,
                      color: Color(0xFFFAFF00).withOpacity(0.4),
               child: Row(children: [
                     
                  
                   Icon(Icons.account_circle_outlined,size: 25,color: Color(0xFF81FF9E),),
                  
                       
                       
                       SizedBox(width: 12,),
                       Text(
                      'My Account',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF000000),
                          //fontWeight: FontWeight.bold
                          ),
                    ),
                     ],),
             ),
             onTap: (){   Navigator.of(context).popUntil((route) => route.settings.name == Profile8.id);
Navigator.pushNamed(context, Profile8.id);     },
           ),
            SizedBox(height: 6,),
            Divider(color: Color(0xFFFAFF00),),
          SizedBox(height: 12,),
        
                      GestureDetector(
             child: Container(
              height: 55,
                      color: Color(0xFFFAFF00).withOpacity(0.4),
               child: Row(children: [
                     
                  
                   Icon(Icons.wallet,size: 25,color: Color(0xFF6900FB),),
                  
                       
                       
                       SizedBox(width: 12,),
                       Text(
                      'My Wallet',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF000000),
                          //fontWeight: FontWeight.bold
                          ),
                    ),
                     ],),
             ),
             onTap: (){   Navigator.of(context).popUntil((route) => route.settings.name == Wallet6.id);
Navigator.pushNamed(context, Pages.id);     },
           ),
             SizedBox(height: 6,),
            Divider(color: Color(0xFFFAFF00),),
          SizedBox(height: 12,),
        
                      GestureDetector(
             child: Container(
              height: 55,
                      color: Color(0xFFFAFF00).withOpacity(0.4),
               child: Row(children: [
                     
                  
                   Icon(Icons.help,size: 25,color: Colors.grey,),
                  
                       
                       
                       SizedBox(width: 12,),
                       Text(
                      'Help',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF000000),
                          //fontWeight: FontWeight.bold
                          ),
                    ),
                     ],),
             ),
             onTap: (){   Navigator.of(context).popUntil((route) => route.settings.name == Help.id);
Navigator.pushNamed(context, Help.id);     },
           ),
        
        
        
        
        
        
      ]),), ),
            body:Stack(
          children: [
            Image.asset('assets/images/W6.png'),
             ListView(
              children: [
                Column(
                  children: [
                                Container(
                   padding: EdgeInsets.only(top:50,bottom:20,right: 0,left:10),
                    child: Text(
                      "My Wallet",
                      style: GoogleFonts.lexend(
           
                          color:  Color(0xFF4B0B8A),
                        fontSize: 22,
                       fontWeight: FontWeight.bold,
                       
                      ),
                    
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Container(
                             width: 65,
                          height: 50,
                              decoration: BoxDecoration(
                             
                                color:  Color(0xFF4B0B8A),
                                
                                
                              
                              borderRadius: BorderRadius.circular(15),
                                ),
                            child: IconButton(
                            //iconSize: 72,
                            color: Colors.white,
                            icon: Image.asset('assets/images/send.png',),
                            onPressed: () {
                                Navigator.of(context).popUntil((route) => route.settings.name ==Send.id);
Navigator.pushNamed(context, Send.id); 
                            },
                          ),
                          ),
                           Text(
                          "Send",
                          style: GoogleFonts.lexend(
           
                              color:  Colors.black,
                            fontSize: 16,
                           fontWeight: FontWeight.bold,
                           
                          ),
                        
                        ),
          
                        ],
                      ),
                                     Column(
                        children: [
                          Container(
                               width: 65,
                          height: 50,
                              decoration: BoxDecoration(
                             
                                color:  Color(0xFF4B0B8A),
                                
                                
                              
                              borderRadius: BorderRadius.circular(15),
                                ),
                            child: IconButton(
                            //iconSize: 72,
                            color: Colors.white,
                            icon:  Image.asset('assets/images/rec.png',),
                            onPressed: () {
                               Navigator.of(context).popUntil((route) => route.settings.name ==Recevie.id);
Navigator.pushNamed(context, Recevie.id); 
                            },
                          ),
                          ),
                           Text(
                          "Receive",
                          style: GoogleFonts.lexend(
           
                              color:  Colors.black,
                            fontSize: 16,
                           fontWeight: FontWeight.bold,
                           
                          ),
                        
                        ),
          
                        ],
                      ),
                                     Column(
                        children: [
                          Container(
                               width: 65,
                          height: 50,
                              decoration: BoxDecoration(
                             
                                color:  Color(0xFF4B0B8A),
                                
                                
                              
                              borderRadius: BorderRadius.circular(15),
                                ),
                            child: IconButton(
                            //iconSize: 72,
                            color: Colors.white,
                            icon:  Image.asset('assets/images/buy.png',),
                            onPressed: () {
                                Navigator.of(context).popUntil((route) => route.settings.name ==Buy.id);
Navigator.pushNamed(context, Buy.id); 
                            
                            },
                          ),
                          ),
                           Text(
                          "Buy",
                          style: GoogleFonts.lexend(
           
                              color:  Colors.black,
                            fontSize: 16,
                           fontWeight: FontWeight.bold,
                           
                          ),
                        
                        ),
          
                        ],
                      ),
                                     Column(
                        children: [
                          Container(
                               width: 65,
                          height: 50,
                              decoration: BoxDecoration(
                             
                                color:  Color(0xFF4B0B8A),
                                
                                
                              
                              borderRadius: BorderRadius.circular(15),
                                ),
                            child: IconButton(
                            //iconSize: 72,
                            color: Colors.white,
                            icon:  Image.asset('assets/images/trade.png',),
                            onPressed: () {
                                Navigator.of(context).popUntil((route) => route.settings.name ==Trade1.id);
Navigator.pushNamed(context, Trade1.id); 
                            
                            },
                          ),
                          ),
                           Text(
                          "Trade",
                          style: GoogleFonts.lexend(
           
                              color:  Colors.black,
                            fontSize: 16,
                           fontWeight: FontWeight.bold,
                           
                          ),
                        
                        ),
          
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                
                  Container(
                       color:  Color(0xFFD9D9D9),
                       height: 60,
          
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.spaceAround ,
                      children: [
                        Container(
                          width: 180,
                          height: 45,
                              //padding: EdgeInsets.only(top:5,bottom:5,right: 1,left: 10),
                                  decoration: BoxDecoration(
                           
                              color:  Color(0xFFFFFFFF),
                              
                              border: Border(
                                 bottom: BorderSide( //                    <--- top side
                                      color:  Color(0xFF4B0B8A),
                  
                          width: 3.0,
                        ),
                      ),
                   ),
                            
                            //borderRadius: BorderRadius.circular(15),
                              
                              child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Coins',
                                style: GoogleFonts.inter(
                                    color:  Color(0xFF4B0B8A),
                  
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),),
                                Container(
                          width: 180,
                          height: 45,
                              //padding: EdgeInsets.only(top:5,bottom:5,right: 1,left: 10),
                                  decoration: BoxDecoration(
                           
                              color:  Color(0xFFFFFFFF),
                              
                              border: Border(
                                 bottom: BorderSide( //                    <--- top side
                                      color:  Color(0xFF6C696F),
                  
                          width: 3.0,
                        ),
                      ),
                   ),
                            
                            //borderRadius: BorderRadius.circular(15),
                              
                              child: TextButton(
                              onPressed: () {
                                               Navigator.of(context).popUntil((route) => route.settings.name ==Wallet7.id);
Navigator.pushNamed(context, Wallet7.id); 
                              },
                              child: Text(
                                'Cart',
                                style: GoogleFonts.inter(
                                    color:  Color(0xFF6C696F),
                  
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),),
                      ],
                    ),
                  ),
                   Column(
                     children: [
                       GestureDetector(
                         child: Container(
                                   width: 350,
                                   height: 80,
                         padding: EdgeInsets.only(top:10,bottom:5,right: 5,left: 10),
                                   decoration: BoxDecoration(
                           color:Color(0xFFDDDBDB).withOpacity(0.4)
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
                                                               fontSize: 14,
                                                               fontWeight: FontWeight.bold,
                                                               
                                                               //fontWeight: FontWeight.bold,
                                                             ),
                                                           
                                                           ),
                                                           Text(
                                                             "+1.3%",
                                                             style: GoogleFonts.lexendExa(
                                         color: Color(0xFF34A853),
                                                               fontSize: 12,
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
                                                               fontSize: 14,
                                                               fontWeight: FontWeight.bold,
                                                               
                                                               //fontWeight: FontWeight.bold,
                                                             ),
                                                           
                                                           ),
                                                           Text(
                                                             "22.558\$",
                                                             style: GoogleFonts.lexendExa(
                                         color: Color(0xFF534C4C),
                                                               fontSize: 12,
                                                               fontWeight: FontWeight.bold,
                                                               
                                                               //fontWeight: FontWeight.bold,
                                                             ),
                                                           
                                                           ),
                           
                              ],
                                         ),
                           ),
                       
                                   ],
                                 ),
                                            ),
                                            onTap: (){
                                                             Navigator.of(context).popUntil((route) => route.settings.name ==Etherem.id);
Navigator.pushNamed(context, Etherem.id); ;
                                            },
                       ),
          
                       GestureDetector(
                         child: Container(
                                   width: 350,
                                   height: 80,
                         padding: EdgeInsets.only(top:10,bottom:5,right: 5,left: 10),
                                   decoration: BoxDecoration(
                           color:Color(0xFFDDDBDB).withOpacity(0.4)
                                   ),
                                   child: Row(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          children: [
                          Image.asset("assets/images/NeoMarket.png"),
                          Container(
                             padding: EdgeInsets.only(top:15,bottom:8,right: 5,left: 10),
                            child: Column(
                              children: [
                                Text(
                                                             "NEO",
                                                             style: GoogleFonts.lexendExa(
                                         color: Color.fromARGB(255, 0, 0, 0),
                                                               fontSize: 14,
                                                               fontWeight: FontWeight.bold,
                                                               
                                                               //fontWeight: FontWeight.bold,
                                                             ),
                                                           
                                                           ),
                                                           Text(
                                                             "+1.3%",
                                                             style: GoogleFonts.lexendExa(
                                         color: Color(0xFF34A853),
                                                               fontSize: 12,
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
                                                               fontSize: 14,
                                                               fontWeight: FontWeight.bold,
                                                               
                                                               //fontWeight: FontWeight.bold,
                                                             ),
                                                           
                                                           ),
                                                           Text(
                                                             "22.558\$",
                                                             style: GoogleFonts.lexendExa(
                                         color: Color(0xFF534C4C),
                                                               fontSize: 12,
                                                               fontWeight: FontWeight.bold,
                                                               
                                                               //fontWeight: FontWeight.bold,
                                                             ),
                                                           
                                                           ),
                           
                              ],
                                         ),
                           ),
                       
                                   ],
                                 ),
                               
                         ),
                         onTap: (){ Navigator.of(context).popUntil((route) => route.settings.name ==Neo.id);
Navigator.pushNamed(context, Neo.id); 
                         },
                       ),
                       
                       GestureDetector(
                         child: Container(
                                   width: 350,
                                   height: 80,
                         padding: EdgeInsets.only(top:10,bottom:5,right: 5,left: 10),
                                   decoration: BoxDecoration(
                           color:Color(0xFFDDDBDB).withOpacity(0.4)
                                   ),
                                   child: Row(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          children: [
                          Image.asset("assets/images/UsdtMarket.png"),
                          Container(
                             padding: EdgeInsets.only(top:15,bottom:8,right: 5,left: 10),
                            child: Column(
                              children: [
                                Text(
                                                             "USDT",
                                                             style: GoogleFonts.lexendExa(
                                         color: Color.fromARGB(255, 0, 0, 0),
                                                               fontSize: 14,
                                                               fontWeight: FontWeight.bold,
                                                               
                                                               //fontWeight: FontWeight.bold,
                                                             ),
                                                           
                                                           ),
                                                           Text(
                                                             "-1.3%",
                                                             style: GoogleFonts.lexendExa(
                                         color: Color(0xFFB82727),
                                                               fontSize: 12,
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
                                                               fontSize: 14,
                                                               fontWeight: FontWeight.bold,
                                                               
                                                               //fontWeight: FontWeight.bold,
                                                             ),
                                                           
                                                           ),
                                                           Text(
                                                             "22.558\$",
                                                             style: GoogleFonts.lexendExa(
                                         color: Color(0xFF534C4C),
                                                               fontSize: 12,
                                                               fontWeight: FontWeight.bold,
                                                               
                                                               //fontWeight: FontWeight.bold,
                                                             ),
                                                           
                                                           ),
                           
                              ],
                                         ),
                           ),
                       
                                   ],
                                 ),),
                                 onTap: (){
                                                   Navigator.of(context).popUntil((route) => route.settings.name ==Usdt.id);
Navigator.pushNamed(context, Usdt.id); 
                                 },
                       ),
                       
                       GestureDetector(
                         child: Container(
                                   width: 350,
                                   height: 80,
                         padding: EdgeInsets.only(top:10,bottom:5,right: 5,left: 10),
                                   decoration: BoxDecoration(
                           color:Color(0xFFDDDBDB).withOpacity(0.4)
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
                                                               fontSize: 14,
                                                               fontWeight: FontWeight.bold,
                                                               
                                                               //fontWeight: FontWeight.bold,
                                                             ),
                                                           
                                                           ),
                                                           Text(
                                                             "+1.3%",
                                                             style: GoogleFonts.lexendExa(
                                         color: Color(0xFF1B934F),
                                                               fontSize: 12,
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
                                                               fontSize: 14,
                                                               fontWeight: FontWeight.bold,
                                                               
                                                               //fontWeight: FontWeight.bold,
                                                             ),
                                                           
                                                           ),
                                                           Text(
                                                             "22.558\$",
                                                             style: GoogleFonts.lexendExa(
                                         color: Color(0xFF534C4C),
                                                               fontSize: 12,
                                                               fontWeight: FontWeight.bold,
                                                               
                                                               //fontWeight: FontWeight.bold,
                                                             ),
                                                           
                                                           ),
                           
                              ],
                                         ),
                           ),
                       
                                   ],
                                 ),),
                                 onTap: (){
                                               Navigator.of(context).popUntil((route) => route.settings.name ==Bitcoin.id);
Navigator.pushNamed(context, Bitcoin.id); 
                                 },
                       ),
                       
                       GestureDetector(
                         child: Container(
                                   width: 350,
                                   height: 80,
                         padding: EdgeInsets.only(top:10,bottom:5,right: 5,left: 10),
                                   decoration: BoxDecoration(
                           color:Color(0xFFDDDBDB).withOpacity(0.4)
                                   ),
                                   child: Row(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          children: [
                          Image.asset("assets/images/LitMarket.png"),
                          Container(
                             padding: EdgeInsets.only(top:15,bottom:8,right: 5,left: 10),
                            child: Column(
                              children: [
                                Text(
                                                             "LIT",
                                                             style: GoogleFonts.lexendExa(
                                         color: Color.fromARGB(255, 0, 0, 0),
                                                               fontSize: 14,
                                                               fontWeight: FontWeight.bold,
                                                               
                                                               //fontWeight: FontWeight.bold,
                                                             ),
                                                           
                                                           ),
                                                           Text(
                                                             "-1.3%",
                                                             style: GoogleFonts.lexendExa(
                                         color: Color(0xFFB82727),
                                                               fontSize: 12,
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
                                                               fontSize: 14,
                                                               fontWeight: FontWeight.bold,
                                                               
                                                               //fontWeight: FontWeight.bold,
                                                             ),
                                                           
                                                           ),
                                                           Text(
                                                             "22.558\$",
                                                             style: GoogleFonts.lexendExa(
                                         color: Color(0xFF534C4C),
                                                               fontSize: 12,
                                                               fontWeight: FontWeight.bold,
                                                               
                                                               //fontWeight: FontWeight.bold,
                                                             ),
                                                           
                                                           ),
                           
                              ],
                                         ),
                           ),
                       
                                   ],
                                 ),),
                                 onTap: (){
                                               Navigator.of(context).popUntil((route) => route.settings.name ==Lit.id);
Navigator.pushNamed(context, Lit.id); 
                                 },
                       ),
                       
                      
                  
                       
                
                       
                     ],
                   )]),
              ],
            ),
            ] ) 
          )
           
       );
  }
}
