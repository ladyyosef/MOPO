import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_2/ui/Screens/nav_pages/nav_bar.dart';

import '../Screens/Wallet6.dart';
import '../Screens/help.dart';
import '../Screens/language.dart';
import '../Screens/preferred_currencies.dart';
import '../Screens/privce.dart';
import '../Screens/profile8.dart';
import 'Pages.dart';
import 'custom_market_appbar.dart';
class CustomScaffoldMarket extends StatelessWidget {
  const CustomScaffoldMarket( {Key? key, required this.child,  }) : super(key: key);

  final Widget child;

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
        body:  Stack(
            children: [
              Image.asset('assets/images/market.png'),
              ListView(
                children: [
                  SizedBox(height: 10),
                 child,
                /// Nav_Par(),
                ],
              ),
            ],
          ),
      ),
    );
  }
}