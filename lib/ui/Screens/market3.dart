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
import 'package:flutter_application_2/ui/Screens/etherem.dart';
import 'package:flutter_application_2/ui/Screens/home.dart';
import 'package:flutter_application_2/ui/Screens/lit.dart';
import 'package:flutter_application_2/ui/Screens/market2.dart';
import 'package:flutter_application_2/ui/Screens/neo.dart';
import 'package:flutter_application_2/ui/Screens/usdt.dart';
import 'package:flutter_application_2/ui/Screens/xrp.dart';
import 'package:flutter_application_2/ui/widegets/custom_scaffold_market.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widegets/Pages.dart';
import '../widegets/custom_market_appbar.dart';
import 'controllers/Market3Controller.dart';
import 'market1.dart';
import 'model/classes.dart';

class Market3 extends StatelessWidget {
  const Market3({key});
    static String id = "Market3";

  @override
  Widget build(BuildContext context) {
   
        return CustomScaffoldMarket(
    
            child:
              
             Column(children: [
           
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  //padding: EdgeInsets.only(top:10,bottom:10,right: 100,left: 10),
    
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(10)),
                  width: 95,
                  height: 55,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          child: Container(
                            padding: EdgeInsets.only(
                                top: 10, bottom: 5, right: 5, left: 10),
                            child: Text(
                              "Watchlist",
                              style: GoogleFonts.lexendExa(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                        
                                //fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                            onTap: (){
                                Navigator.of(context).popUntil((route) => route.settings.name == Market1.id);
    Navigator.pushNamed(context, Pages.id);  
                      },
                        ),
    
                        Icon(
                          Icons.list,
                          color: Color(0xFF4ECB71),
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    //padding: EdgeInsets.only(top:10,bottom:10,right: 100,left: 10),
                
                    decoration: BoxDecoration(
                             color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    width: 95,
                    height: 55,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                top: 10, bottom: 5, right: 0, left: 10),
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
                            color: Color(0xFFFAFF00),size: 18,
                          ),
                        ],
                      ),
                    ),
                  ),
                    onTap: (){
                               Navigator.of(context).popUntil((route) => route.settings.name == Market2.id);
    Navigator.pushNamed(context, Market2.id);  
                      },
                ),
                GestureDetector(
                  child: Container(
                    //padding: EdgeInsets.only(top:10,bottom:10,right: 100,left: 10),
                
                    decoration: BoxDecoration(
                   
                        color: Color(0xFFEDE6E6)
                        , borderRadius: BorderRadius.circular(10)),
                    width: 95,
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
                       
                      },
                ),
              ],
            ),
          ),
             SizedBox(
                        height: 20,
                      ),
             FutureBuilder<List<CurrencyData>>(
               future: TrendingController.getcurrency(),
               builder: (context, snapshot) {
 if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            final currency = snapshot.data!;
                 return Column(
                         children: [
                 ...currency.map((curr) => GestureDetector(
                    child: Container(
                      width: 350,
                          height: 80,
                           padding: EdgeInsets.only(top:10,bottom:5,right: 5,left: 10),
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF)
                          ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        
                          Image.network(curr.logo),
                           Container(
                               padding: EdgeInsets.only(top:15,bottom:8,right: 5,left: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                                               curr.abbreviation,
                                                               style: GoogleFonts.lexendExa(
                                           color: Color.fromARGB(255, 0, 0, 0),
                                                                 fontSize: 12,
                                                                 fontWeight: FontWeight.bold,
                                                                 
                                                                 //fontWeight: FontWeight.bold,
                                                               ),
                                                             
                                                             ),
                                                             Text(
                                                               "${curr.percentage}%",
                                                               style: GoogleFonts.lexendExa(
                                           color: Color(0xFF534C4C),
                                                                 fontSize: 10,
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
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                                               "${curr.newPrice}\$",
                                                               style: GoogleFonts.lexendExa(
                                           color: Color.fromARGB(255, 0, 0, 0),
                                                                 fontSize: 12,
                                                                 fontWeight: FontWeight.bold,
                                                                 
                                                                 //fontWeight: FontWeight.bold,
                                                               ),
                                                             
                                                             ),
                                                          Container(
                                                            width: 60,
                                                            height: 27,
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
                                    
                                   Navigator.of(context).popUntil((route) => route.settings.name == Etherem.id);
                 Navigator.pushNamed(context, Etherem.id);  
                          
                                  },
                                  child: Text(
                                    'GET',
                                    style: GoogleFonts.lexendExa(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                            )   
                            
                                ],
                              ),
                            ),
                      ]),
                    ),
                      onTap: (){
                            Navigator.of(context).popUntil((route) => route.settings.name == Etherem.id);
                 Navigator.pushNamed(context, Etherem.id);  
                          
                          },
                  ),),
                     SizedBox(
                            height: 10,
                          ),
                        ...currency.map((curr) =>   GestureDetector(
                    child: Container(
                      width: 350,
                          height: 80,
                           padding: EdgeInsets.only(top:10,bottom:5,right: 5,left: 10),
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF)
                          ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        
                          Image.network(curr.logo),
                           Container(
                               padding: EdgeInsets.only(top:15,bottom:8,right: 5,left: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                                               curr.abbreviation,
                                                               style: GoogleFonts.lexendExa(
                                           color: Color.fromARGB(255, 0, 0, 0),
                                                                 fontSize: 12,
                                                                 fontWeight: FontWeight.bold,
                                                                 
                                                                 //fontWeight: FontWeight.bold,
                                                               ),
                                                             
                                                             ),
                                                             Text(
                                                               "${curr.percentage}%",
                                                               style: GoogleFonts.lexendExa(
                                           color: Color(0xFF534C4C),
                                                                 fontSize: 10,
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
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                                               "${curr.newPrice}\$",
                                                               style: GoogleFonts.lexendExa(
                                           color: Color.fromARGB(255, 0, 0, 0),
                                                                 fontSize: 12,
                                                                 fontWeight: FontWeight.bold,
                                                                 
                                                                 //fontWeight: FontWeight.bold,
                                                               ),
                                                             
                                                             ),
                                                          Container(
                                                            width: 60,
                                                            height: 27,
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
                             Navigator.of(context).popUntil((route) => route.settings.name == Usdt.id);
                 Navigator.pushNamed(context, Usdt.id);  
                          
                          
                                  },
                                  child: Text(
                                    'GET',
                                    style: GoogleFonts.lexendExa(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                            )   
                            
                                ],
                              ),
                            ),
                      ]),
                    ),
                      onTap: (){
                             Navigator.of(context).popUntil((route) => route.settings.name == Usdt.id);
                 Navigator.pushNamed(context, Usdt.id);  
                          
                          },
                  ),),
                     SizedBox(
                            height: 10,
                          ),
                        ...currency.map((curr) =>   GestureDetector(
                    child: Container(
                      width: 350,
                          height: 80,
                           padding: EdgeInsets.only(top:10,bottom:5,right: 5,left: 10),
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF)
                          ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        
                          Image.network(curr.logo),
                           Container(
                               padding: EdgeInsets.only(top:15,bottom:8,right: 5,left: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                                               curr.abbreviation,
                                                               style: GoogleFonts.lexendExa(
                                           color: Color.fromARGB(255, 0, 0, 0),
                                                                 fontSize: 12,
                                                                 fontWeight: FontWeight.bold,
                                                                 
                                                                 //fontWeight: FontWeight.bold,
                                                               ),
                                                             
                                                             ),
                                                             Text(
                                                               "${curr.percentage}%",
                                                               style: GoogleFonts.lexendExa(
                                           color: Color(0xFF534C4C),
                                                                 fontSize: 10,
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
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                                               "${curr.newPrice}\$",
                                                               style: GoogleFonts.lexendExa(
                                           color: Color.fromARGB(255, 0, 0, 0),
                                                                 fontSize: 12,
                                                                 fontWeight: FontWeight.bold,
                                                                 
                                                                 //fontWeight: FontWeight.bold,
                                                               ),
                                                             
                                                             ),
                                                          Container(
                                                            width: 60,
                                                            height: 27,
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
                                     
                            Navigator.of(context).popUntil((route) => route.settings.name == Bitcoin.id);
                 Navigator.pushNamed(context, Bitcoin.id);  
                          
                          
                                  },
                                  child: Text(
                                    'GET',
                                    style: GoogleFonts.lexendExa(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                            )   
                            
                                ],
                              ),
                            ),
                      ]),
                    ),
                      onTap: (){
                             Navigator.of(context).popUntil((route) => route.settings.name == Bitcoin.id);
                 Navigator.pushNamed(context, Bitcoin.id);  
                          },
                  ),),
                   SizedBox(
                            height: 10,
                          ),
                        ...currency.map((curr) =>   GestureDetector(
                    child: Container(
                      width: 350,
                          height: 80,
                           padding: EdgeInsets.only(top:10,bottom:5,right: 5,left: 10),
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF)
                          ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        
                          Image.network(curr.logo),
                           Container(
                               padding: EdgeInsets.only(top:15,bottom:8,right: 5,left: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                                               curr.abbreviation,
                                                               style: GoogleFonts.lexendExa(
                                           color: Color.fromARGB(255, 0, 0, 0),
                                                                 fontSize: 12,
                                                                 fontWeight: FontWeight.bold,
                                                                 
                                                                 //fontWeight: FontWeight.bold,
                                                               ),
                                                             
                                                             ),
                                                             Text(
                                                               "${curr.percentage}%",
                                                               style: GoogleFonts.lexendExa(
                                           color: Color(0xFF534C4C),
                                                                 fontSize: 10,
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
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                                               "${curr.newPrice}\$",
                                                               style: GoogleFonts.lexendExa(
                                           color: Color.fromARGB(255, 0, 0, 0),
                                                                 fontSize: 12,
                                                                 fontWeight: FontWeight.bold,
                                                                 
                                                                 //fontWeight: FontWeight.bold,
                                                               ),
                                                             
                                                             ),
                                                          Container(
                                                            width: 60,
                                                            height: 27,
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
                           Navigator.of(context).popUntil((route) => route.settings.name == Lit.id);
                 Navigator.pushNamed(context, Lit.id);  
                          
                                  },
                                  child: Text(
                                    'GET',
                                    style: GoogleFonts.lexendExa(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                            )   
                            
                                ],
                              ),
                            ),
                      ]),
                    ),
                      onTap: (){
                             Navigator.of(context).popUntil((route) => route.settings.name == Lit.id);
                 Navigator.pushNamed(context, Lit.id);  
                          },
                  ),),
                    SizedBox(
                            height: 10,
                          ),
                    ...currency.map((curr) =>       GestureDetector(
                    child: Container(
                      width: 350,
                          height: 80,
                           padding: EdgeInsets.only(top:10,bottom:5,right: 5,left: 10),
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF)
                          ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        
                          Image.network(curr.logo),
                           Container(
                               padding: EdgeInsets.only(top:15,bottom:8,right: 5,left: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                                               curr.abbreviation,
                                                               style: GoogleFonts.lexendExa(
                                           color: Color.fromARGB(255, 0, 0, 0),
                                                                 fontSize: 12,
                                                                 fontWeight: FontWeight.bold,
                                                                 
                                                                 //fontWeight: FontWeight.bold,
                                                               ),
                                                             
                                                             ),
                                                             Text(
                                                               "${curr.percentage}%",
                                                               style: GoogleFonts.lexendExa(
                                           color: Color(0xFF534C4C),
                                                                 fontSize: 10,
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
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                                               "${curr.newPrice}\$",
                                                               style: GoogleFonts.lexendExa(
                                           color: Color.fromARGB(255, 0, 0, 0),
                                                                 fontSize: 12,
                                                                 fontWeight: FontWeight.bold,
                                                                 
                                                                 //fontWeight: FontWeight.bold,
                                                               ),
                                                             
                                                             ),
                                                          Container(
                                                            width: 60,
                                                            height: 27,
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
                                      
                           Navigator.of(context).popUntil((route) => route.settings.name == Neo.id);
                 Navigator.pushNamed(context, Neo.id);  
                        
                                  },
                                  child: Text(
                                    'GET',
                                    style: GoogleFonts.lexendExa(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                            )   
                            
                                ],
                              ),
                            ),
                      ]),
                    ),
                      onTap: (){
                              Navigator.of(context).popUntil((route) => route.settings.name == Neo.id);
                 Navigator.pushNamed(context, Neo.id);  
                          },
                  ),),
                     SizedBox(
                            height: 10,
                          ),
                       ...currency.map((curr) =>    GestureDetector(
                    child: Container(
                      width: 350,
                          height: 80,
                           padding: EdgeInsets.only(top:10,bottom:5,right: 5,left: 10),
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF)
                          ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        
                          Image.network(curr.logo),
                           Container(
                               padding: EdgeInsets.only(top:15,bottom:8,right: 5,left: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                                               curr.abbreviation,
                                                               style: GoogleFonts.lexendExa(
                                           color: Color.fromARGB(255, 0, 0, 0),
                                                                 fontSize: 12,
                                                                 fontWeight: FontWeight.bold,
                                                                 
                                                                 //fontWeight: FontWeight.bold,
                                                               ),
                                                             
                                                             ),
                                                             Text(
                                                               "${curr.percentage}%",
                                                               style: GoogleFonts.lexendExa(
                                           color: Color(0xFF534C4C),
                                                                 fontSize: 10,
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
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                                               "${curr.newPrice}\$",
                                                               style: GoogleFonts.lexendExa(
                                           color: Color.fromARGB(255, 0, 0, 0),
                                                                 fontSize: 12,
                                                                 fontWeight: FontWeight.bold,
                                                                 
                                                                 //fontWeight: FontWeight.bold,
                                                               ),
                                                             
                                                             ),
                                                          Container(
                                                            width: 60,
                                                            height: 27,
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
                                      
                            Navigator.of(context).popUntil((route) => route.settings.name == Xrp.id);
                 Navigator.pushNamed(context, Xrp.id);  
                          
                                  },
                                  child: Text(
                                    'GET',
                                    style: GoogleFonts.lexendExa(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                            )   
                            
                                ],
                              ),
                            ),
                      ]),
                    ),
                      onTap: (){
                              Navigator.of(context).popUntil((route) => route.settings.name == Xrp.id);
                 Navigator.pushNamed(context, Xrp.id);  
                          },
                  ),),
                         ],
                       );
               }
             ),
    ]));
   
  }
}
