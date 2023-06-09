import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_2/ui/Screens/home.dart';
import 'package:flutter_application_2/ui/Screens/preferred_currencies.dart';
import 'package:flutter_application_2/ui/Screens/privce.dart';
import 'package:flutter_application_2/ui/Screens/profile2.dart';
import 'package:flutter_application_2/ui/Screens/profile3.dart';
import 'package:flutter_application_2/ui/Screens/profile8.dart';
import 'package:flutter_application_2/ui/widegets/custom_scaffold.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widegets/Pages.dart';
import 'Wallet6.dart';
import 'help.dart';
import 'language.dart';

class Profile1 extends StatefulWidget {
  const Profile1({Key? key}) : super(key: key);
    static String id = "Profile1";

  @override
  State<Profile1> createState() => _Profile1State();
}

class _Profile1State extends State<Profile1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
      child: Scaffold(
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
           
        
        
        
        
        
        
   
        body: Stack(
          children: [
              Image.asset('assets/images/bg.png'),
            ListView(
              children: [
                Column(
      
                  children: [
                   
                
                    SizedBox(
                      height: 79,
                    ),
                    Text(
                      "Welcome To Mopo",
                      style: GoogleFonts.leckerliOne(
                        color: Colors.black,
                        fontSize: 30,
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    GestureDetector(
                      child: Container(
                        height: 70,
                        width: 330,
                        padding: EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
                        decoration: BoxDecoration(
                          color: Color(0xFF4B0B8A),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            Image.asset('assets/images/gg_profile.png'),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'sign in with your email',
                              style: GoogleFonts.lexendExa(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                        onTap: (){
                              Navigator.of(context).popUntil((route) => route.settings.name == Profile3.id);
Navigator.pushNamed(context, Profile3.id);   

                            },
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Center(
                      child: Row(
                        children: [
                          Container(
                            width: 160,
                            child: Image.asset('assets/images/Line 3.png')),
                          SizedBox(
                            width: 5,
                          ),
                            Text(
                        "OR",
                        style: GoogleFonts.leckerliOne(
                          color: Color(0xFF4B0B8A),
                          fontSize: 20,
                          
                          //fontWeight: FontWeight.bold,
                        ),),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 160,
                            child: Image.asset('assets/images/Line 3.png')),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Text(
                      "Already registered?",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      decoration: BoxDecoration(
                         
                                borderRadius: BorderRadius.circular(19),
                              ),
                      child: TextButton(
                          onPressed: () {
                               
                              Navigator.of(context).popUntil((route) => route.settings.name == Profile2.id);
Navigator.pushNamed(context, Profile2.id);   

                              
                          },
                          child: Text(
                            'Log In',
                            style: GoogleFonts.lexendExa(
                              color: Color(0xFF4B0B8A),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
    //  Scaffold(
    //   body: Column(
    //     children: [
    //       Image.asset('assets/images/Line 1.png'),
    //       SizedBox(
    //         height: 40,
    //       ),
    //       Stack(
    //         children: [
    //           Image.asset(
    //             'assets/images/RectangleTop.png',
    //           ),
    //           SizedBox(
    //             height: 240,
    //           ),
    //           Column(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             crossAxisAlignment: CrossAxisAlignment.center,
    //             children: [
    //               Container(
    //                 width: 425,
    //                 height: 69,
    //                 color: Colors.white,
    //                 child: Row(
    //                   children: [
    //                     Container(
    //                         padding: EdgeInsets.all(14),
    //                         child: Icon(Icons.arrow_back)),
    //                     SizedBox(
    //                       width: 140.0,
    //                     ),
    //                     Image.asset('assets/images/LogoHome.png')
    //                   ],
    //                 ),
    //               ),
    //               SizedBox(
    //                 height: 79,
    //               ),

    //               Text(
    //                 "Welcome To Mopo",
    //                 style: TextStyle(
    //                     fontSize: 40,
    //                     color: Colors.black,
    //                     fontWeight: FontWeight.bold),
    //               ),
    //             ],
    //           ),
    //         ],
    //       ),
    //       SizedBox(
    //         height: 50,
    //       ),

    //     ],

    //   ),
    // );
  }
}
