import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_2/ui/Screens/home.dart';
import 'package:flutter_application_2/ui/Screens/profile1.dart';
import 'package:flutter_application_2/ui/Screens/profile8.dart';
import 'package:flutter_application_2/ui/widegets/custom_scaffold.dart';
import 'package:flutter_application_2/ui/widegets/custom_appbar.dart';
import 'package:flutter_application_2/ui/Screens/nav_pages/nav_bar.dart';

import 'package:flutter/material.dart';

import '../widegets/Pages.dart';

class Logout extends StatelessWidget {
  const Logout({key});
    static String id = "Logout";


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              child: Image.asset('assets/images/logout11.png',width: double.infinity)),
            ListView(
              children: [
                SizedBox(height: 10),
            Container(
        width: 425,
        height: 55,
        color: Colors.white,
        child: Row(
          children: [
            IconButton(
                onPressed: () {
                Navigator.of(context).popUntil((route) => route.settings.name == Profile8.id);
Navigator.pushNamed(context, Profile8.id);     
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

                SizedBox(height: 100,),
                Column(
                  children: [

                   GestureDetector(
                      child: Center(
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
                              Image.asset('assets/images/logout2.png'),
                              SizedBox(width: 20,),
                               Container(
                                          // padding: EdgeInsets.only(top: 1, bottom: 20, right: 250, left: 10),
                                          child: Text(
                          'Lady Abo Alenin',
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold),
                                          ),
                                        ),
                            ],
                          ),
                        ),
                      ),
                      onTap:(){
  Navigator.of(context).popUntil((route) => route.settings.name == Profile8.id);
Navigator.pushNamed(context, Pages.id);                         } ,
                    ),
                    
                    SizedBox(height: 45,),
                      Center(
                      child: GestureDetector(
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
                           child: Icon(Icons.add_circle,  color: Color(0xFF4B0B8A),size: 30,),
                          ),
                          onTap: (){
                             
                   
  Navigator.of(context).popUntil((route) => route.settings.name == Profile1.id);
Navigator.pushNamed(context, Pages.id);         
                          },
                      )
                        )

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
