import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

import 'admin_wallet1.dart';
import 'admin_wallet3.dart';
import 'admin_wallet4.dart';

class AdminWallet2 extends StatefulWidget {
  const AdminWallet2({Key? key}) : super(key: key);
  static String id = "AdminWallet2";

  @override
  State<AdminWallet2> createState() => _AdminWallet2State();
}

class _AdminWallet2State extends State<AdminWallet2> {
  Color borderColor = Color(0xFF4B0B8A);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(children: [
      ListView(children: [
        Column(
          children: [
            SizedBox(height: 5),
            Container(
              width: 425,
              height: 55,
              color: Colors.white,
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).popUntil(
                            (route) => route.settings.name == AdminWallet1.id);
                        Navigator.pushNamed(context, AdminWallet1.id);
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
            SizedBox(height: 20),
            Container(
              color: Color(0xFF4B0B8A),
              padding:
                  EdgeInsets.only(top: 20, bottom: 30, right: 210, left: 15),
              child: Text(
                "Choose your card",
                style: GoogleFonts.leckerliOne(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 80),
            GestureDetector(
              child: Container(
                width: 230,
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: Colors.yellow, width: 3),
                ),
                child: Center(child: Image.asset('assets/images/m2.png')),
              ),
              onTap: () {
                setState(() {
                  borderColor =
                      borderColor; // تحديث لون الحدود عند النقر على الصورة
                });
              },
            ),
            SizedBox(height: 10),
            GestureDetector(
              child: Container(
                width: 230,
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: Colors.yellow, width: 3),
                ),
                child: Center(child: Image.asset('assets/images/v2.png')),
              ),
              onTap: () {
                setState(() {
                  borderColor =
                      borderColor; // تحديث لون الحدود عند النقر على الصورة
                });
              },
            ),
            SizedBox(height: 80),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    //padding: EdgeInsets.only(top:5,bottom:5,right: 1,left: 10),
                    width: 80,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xFF4B0B8A),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).popUntil((route) =>
                              route.settings.name == AdaminWallet3.id);
                          Navigator.pushNamed(context, AdaminWallet3.id);
                        },
                        child: Text(
                          'Next',
                          style: GoogleFonts.lexendExa(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
                  //  SizedBox(width:80),
                ],
              ),
            )
          ],
        ),
      ])
    ])));
  }
}

class AdminWallet3 {}
