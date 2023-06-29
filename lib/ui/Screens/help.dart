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
import 'package:flutter_application_2/ui/widegets/custom_scaffold_market.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widegets/Pages.dart';
import 'home.dart';

class Help extends StatelessWidget {
  const Help ({Key? key}) : super(key: key);
  static String id = "Help";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(children: [
            //  SizedBox(height: 50,),
      //Image.asset('assets/images/setting.png'),
      ListView(children: [
        SizedBox(height: 25,),
        Container(
                    width: double.infinity,

          height: 60,
          color: Color(0xFF4B0B8A),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).popUntil((route) => route.settings.name == Home.id);
Navigator.pushNamed(context, Pages.id);     
                },
                icon: Icon(Icons.arrow_back),
                color: Color(0xFFFFFFFF),
              ),
                 Container(
                padding:
                    EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
                child: Text(
                  "Help",
                  style: GoogleFonts.lexendExa(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              
              
            ],
            
          ),
        ),
         Column(
          children: [
                  Container(                            padding: EdgeInsets.only(top: 5, bottom: 0, right: 250, left: 10),

                    child: Image.asset("assets/images/LogoHome.png")),
                       Container(
                padding: EdgeInsets.only(top: 10, bottom: 20, right:5, left: 5),
                child: Text(
                  "Lorem ipsum dolor sit amet consectetur. Gravida quis commodo amet eget congue id nec. Elementum ornare faucibus pellentesque adipiscing praesent aliquam purus nunc. Lorem cursus enim maecenas a tristique blandit morbi quisque. Mi gravida iaculis massa praesent eget pulvinar lacus. Nibh sed bibendum lacus semper feugiat libero. Scelerisque volutpat suscipit eget fames sapien urna. Iaculis fames montes vel mauris odio. At in duis faucibus pharetra tristique aliquam. Eget egestas rhoncus purus amet neque vel. Amet quis sed eu egestas eu. Nunc quis quam sem blandit porta egestas. Sit consequat sed euismod velit sit sit cursus. Sed aenean id bibendum lectus duis eu. Amet cursus bibendum gravida tellus tortor id in vurus. Diam amet vitae nisl aliquet in fames rhoncus nunc sagittis. Aenean euismod cursus aliquam ac. Dolor massa ut aliquam aenean venenatis quisque feugiat consequat.aliquet in fames rhoncus nunc sagittis. Aenean euismod cursus alpurus amet neque vel. Amet quis sed eu egestas eu. Nunc quis quam sem blandit porta egestas. Sit consequat sed euismod velit sit sit cursus. Sed aenean id bibendum lectus duis eu. Amet cursus bibendum gravida tellus tortor id in volutpat elit. Purus turpis faucibus dolor morbi at mi eros. Facilisi metus orci cursus purus. Diam amet vitae nisl aliquet in fames rhoncus nunc sagit cursus aliquam ac. Dolor massa ut aliquam aenean venenatis quisque feugiat conaliquet in fames rhoncus nunc sagittis. Aenean euismod cursus aliquam ac. Dolor massa ut aliquam aenean venenatis quisque feugiat con",
                  style: GoogleFonts.lexendExa(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                
      ),

            ])
 ] ) ])));
 }}