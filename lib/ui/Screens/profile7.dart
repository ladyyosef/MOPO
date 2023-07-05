import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_2/ui/Screens/profile6.dart';
import 'package:flutter_application_2/ui/Screens/profile8.dart';
import 'package:flutter_application_2/ui/widegets/custom_scaffold.dart';
import 'package:flutter_application_2/ui/widegets/custom_dropdownbutton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widegets/Pages.dart';
import 'home.dart';

class Profile7 extends StatelessWidget {
  const Profile7({Key? key,required this.email,required this.fullName,required this.birthdate, required this.password}) : super(key: key);
    static String id = "Profile7";
     final String email;
  final String password;
  final String fullName;
  final String birthdate;


  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        child: Column(children: [
          Container(
                    width: 425,
                    height: 55,
                    color: Colors.white,
                    child: Row(
                      children: [
                               IconButton(onPressed: (){
                            Navigator.of(context).popUntil((route) => route.settings.name == Profile6.id);
Navigator.pushNamed(context, Profile6.id);  
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
      SizedBox(
        height: 20,
      ),
       Center(
         child: Container(  padding: EdgeInsets.only(top:10,bottom:10,right: 10,left:10),
        color: Color.fromARGB(255, 252, 249, 255),             
         width: double.infinity,
                   height: 60,
       
             child: Text(
                "Identity Verification",
                style: GoogleFonts.leckerliOne(
                  color:  Color(0xFF4B0B8A),
                  fontSize: 22,
                  
                  //fontWeight: FontWeight.bold,
                ),
              
              ),
           ),
       ),
     
      SizedBox(
        height: 10,
      ),
      Container(
        width: 250,
        height: 250,
        child: Image.asset('assets/images/pro7.png')),
      SizedBox(
        height: 10,
      ),
      Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 20, right: 40, left: 25),
            child: Row(
              children: [
                Container(
                  // padding: EdgeInsets.only(top: 1, bottom: 20, right: 250, left: 10),
                  child: Text(
                    'identity',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF4B0B8A),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 175,
                ),
                Container(
                  // color: Color(0xFF4B0B8A),
                  child: Icon(
                    Icons.upload,
                    color: Color(0xFF4B0B8A),
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.perm_identity,
                    color: Color(0xFF4B0B8A),
                  ),
                ),
              ],
            ),
          ),
           Image.asset('assets/images/line8.png'),
          Container(
            padding: EdgeInsets.only(top: 25, bottom: 20, right: 20, left: 25),
            child: Row(
              children: [
                Container(
                  // padding: EdgeInsets.only(top: 1, bottom: 20, right: 250, left: 10),
                  child: Text(
                    'passport',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF4B0B8A),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 170,
                ),
                Container(
                  // color: Color(0xFF4B0B8A),
                  child: Icon(
                    Icons.upload,
                    color: Color(0xFF4B0B8A),
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.airplane_ticket_outlined,
                    color: Color(0xFF4B0B8A),
                  ),
                ),
              ],
            ),
          ),
           Image.asset('assets/images/line8.png'),
          Container(
            padding: EdgeInsets.only(top: 25, bottom: 20, right: 5, left: 25),
            child: Row(
              children: [
                Container(
                  // padding: EdgeInsets.only(top: 1, bottom: 20, right: 250, left: 10),
                  child: Text(
                    'driving license',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF4B0B8A),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 120,
                ),
                Container(
                  // color: Color(0xFF4B0B8A),
                  child: Icon(
                    Icons.upload,
                    color: Color(0xFF4B0B8A),
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.car_repair,
                    color: Color(0xFF4B0B8A),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
          width: 280,
                height: 55,
                decoration: BoxDecoration(borderRadius:BorderRadius.circular(18),
                                color: Color(0xFF4B0B8A),
 ),
            child: MaterialButton(
              onPressed: () {
                   Navigator.of(context).popUntil((route) => route.settings.name == Profile8.id);
Navigator.pushNamed(context, Profile8.id);  
              },
              child: Text(
                'next',
                style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    ]));
  }
}
