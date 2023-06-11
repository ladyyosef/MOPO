import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_2/ui/Screens/a_sell.dart';
import 'package:flutter_application_2/ui/Screens/logout.dart';
import 'package:google_fonts/google_fonts.dart';

import 'a-buy.dart';
import 'a_add.dart';
import 'admin_curr.dart';
import 'admin_wallet5.dart';

class AdminWallet4 extends StatefulWidget {
  const AdminWallet4({Key? key}) : super(key: key);
  static String id = "AdminWallet4";

  @override
  State<AdminWallet4> createState() => _AdminWallet4State();
}

class _AdminWallet4State extends State<AdminWallet4> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Stack(
      children: [
              Image.asset('assets/images/W6.png'),
        ListView(children: [
          Column(children: [
             
        Container(
          width: 425,
          height: 55,
          color: Colors.white,
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                           Navigator.of(context).popUntil((route) => route.settings.name == Logout.id);
Navigator.pushNamed(context, Logout.id);     
                  },
                  icon: Icon(Icons.logout_sharp,color:  Color(0xFF4B0B8A),)),
              SizedBox(
                width: 180.0,
              ),
              Center(
                child: Container(
                    width: 120,
                    height: 100,
                    child: Image.asset('assets/images/LogoHome.png',
                          )),
              )
            ],
          ),
        ),

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
                           icon:  Icon(Icons.sell_outlined),
                            onPressed: () {
                                Navigator.of(context).popUntil((route) => route.settings.name ==ASell.id);
Navigator.pushNamed(context, ASell.id); 
                            },
                          ),
                          ),
                           Text(
                          "Sell",
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
                            icon:  Icon(Icons.add_circle),
                            onPressed: () {
                               Navigator.of(context).popUntil((route) => route.settings.name ==AAdd.id);
Navigator.pushNamed(context, AAdd.id); 
                            },
                          ),
                          ),
                           Text(
                          "Add",
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
                           icon:  Icon(Icons.monetization_on),
                            onPressed: () {
                                Navigator.of(context).popUntil((route) => route.settings.name ==ABuy.id);
Navigator.pushNamed(context, ABuy.id); 
                            
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
                                               Navigator.of(context).popUntil((route) => route.settings.name ==AdminWallet5.id);
Navigator.pushNamed(context, AdminWallet5.id); 
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
                  Column(children: [
                    
                  ],),


      
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
                                Icon(Icons.edit_note_sharp,  color:  Color(0xFF4B0B8A)),

                       
                                   ],
                                 ),
                               
                         ),
                         onTap: (){ Navigator.of(context).popUntil((route) => route.settings.name ==AdminCurr.id);
Navigator.pushNamed(context, AdminCurr.id); 
                         },
                       ),




          ],)
        ]),
      ],
    ),));
  }
}
