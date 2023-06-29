import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_2/ui/Screens/logout.dart';
import 'package:flutter_application_2/ui/Screens/profile7.dart';
import 'package:flutter_application_2/ui/widegets/custom_scaffold.dart';
import 'package:flutter_application_2/ui/widegets/custom_dropdownbutton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widegets/Pages.dart';
import 'home.dart';

class Profile8 extends StatelessWidget {
  const Profile8({key});
    static String id = "Profile8";

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
        SizedBox(
          height: 20,
        ),
         Stack(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey[300],
                // backgroundImage: NetworkImage('https://example.com/profile-image.png'),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    // اضف هنا الكود الذي يفتح شاشة جديدة لتحميل الصورة الجديدة
                  },
                ),
              ),
            ],
          ),
        SizedBox(
          height: 10,
        ),
        Center(
          child: Container(
            //padding: EdgeInsets.only(top: 35, bottom: 10, right: 100, left: 5),
            child: Text(
              'Lady Abo Alenin',
              style: GoogleFonts.lexendExa(
                  fontSize: 20,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          height: 45,
        ),
        Image.asset('assets/images/line8.png'),
        Column(
          children: [
            Container(
              padding:
                  EdgeInsets.only(top: 15, bottom: 20, right: 25, left: 25),
              child: Row(
                children: [
                  Icon(Icons.account_box_outlined, color: Color(0xFF4B0B8A)),
                  Container(
                    //padding: EdgeInsets.only(top: 35, bottom: 10, right: 100, left: 5),
                    child: Text(
                      'Name',
                      style: GoogleFonts.lexendExa(
                          fontSize: 12,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Container(
                    //padding: EdgeInsets.only(top: 35, bottom: 10, right: 100, left: 5),
                    child: Text(
                      'Lady Abo Alenin',
                      style: GoogleFonts.lexendExa(
                          fontSize: 12,
                          color: Color(0xFF4B0B8A),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Image.asset('assets/images/line8.png'),
            Container(
              padding:
                  EdgeInsets.only(top: 15, bottom: 20, right: 25, left: 25),
              child: Row(
                children: [
                  Icon(Icons.email, color: Color(0xFF4B0B8A)),
                  Container(
                    //padding: EdgeInsets.only(top: 35, bottom: 10, right: 100, left: 5),
                    child: Text(
                      'Email',
                      style: GoogleFonts.lexendExa(
                          fontSize: 12,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  Container(
                    //padding: EdgeInsets.only(top: 35, bottom: 10, right: 100, left: 5),
                    child: Text(
                      'lady123@gmail.com',
                      style: GoogleFonts.lexendExa(
                          fontSize: 12,
                          color: Color(0xFF4B0B8A),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Image.asset('assets/images/line8.png'),
            Container(
              padding:
                  EdgeInsets.only(top: 15, bottom: 20, right: 25, left: 25),
              child: Row(
                children: [
                  Icon(Icons.phone, color: Color(0xFF4B0B8A)),
                  Container(
                    //padding: EdgeInsets.only(top: 35, bottom: 10, right: 100, left: 5),
                    child: Text(
                      'Phone number',
                      style: GoogleFonts.lexendExa(
                          fontSize: 12,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  Container(
                    //padding: EdgeInsets.only(top: 35, bottom: 10, right: 100, left: 5),
                    child: Text(
                      '0912345678',
                      style: GoogleFonts.lexendExa(
                          fontSize: 12,
                          color: Color(0xFF4B0B8A),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Image.asset('assets/images/line8.png'),
            Container(
              padding:
                  EdgeInsets.only(top: 15, bottom: 20, right: 25, left: 25),
              child: Row(
                children: [
                  Icon(Icons.key_outlined, color: Color(0xFF4B0B8A)),
                  Container(
                    //padding: EdgeInsets.only(top: 35, bottom: 10, right: 100, left: 5),
                    child: Text(
                      'Password',
                      style: GoogleFonts.lexendExa(
                          fontSize: 12,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 120,
                  ),
                  Container(
                    //padding: EdgeInsets.only(top: 35, bottom: 10, right: 100, left: 5),
                    child: Text(
                      '**********',
                      style: GoogleFonts.lexendExa(
                          fontSize: 12,
                          color: Color(0xFF4B0B8A),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Image.asset('assets/images/line8.png'),
            GestureDetector(
              child: Container(
                padding:
                    EdgeInsets.only(top: 15, bottom: 20, right: 25, left: 25),
                child: Row(
                  children: [
                    Icon(Icons.exit_to_app, color: Color(0xFF4B0B8A)),
                    Container(
                      //padding: EdgeInsets.only(top: 35, bottom: 10, right: 100, left: 5),
                      child: Text(
                        'Log out',
                        style: GoogleFonts.lexendExa(
                            fontSize: 12,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
                onTap: (){
                   Navigator.of(context).popUntil((route) => route.settings.name == Logout.id);
Navigator.pushNamed(context, Logout.id);  
                  },
            ),
            Image.asset('assets/images/line8.png'),
            Container(
              padding:
                  EdgeInsets.only(top: 15, bottom: 20, right: 25, left: 25),
              child: Row(
                children: [
                  Icon(Icons.settings, color: Color(0xFF4B0B8A)),
                  Container(
                    //padding: EdgeInsets.only(top: 35, bottom: 10, right: 100, left: 5),
                    child: Text(
                      'Settings',
                      style: GoogleFonts.lexendExa(
                          fontSize: 12,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
