import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_2/ui/Screens/profile5.dart';
import 'package:flutter_application_2/ui/Screens/profile7.dart';
import 'package:flutter_application_2/ui/Screens/profile8.dart';
import 'package:flutter_application_2/ui/widegets/custom_scaffold.dart';
import 'package:flutter_application_2/ui/widegets/custom_dropdownbutton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widegets/Drop2.dart';
import '../widegets/Pages.dart';
import 'home.dart';

class Profile6 extends StatelessWidget {
  Profile6({Key? key}) : super(key: key);
  var fullNameController = TextEditingController();
  var birthDateController = TextEditingController();
  List<String> itemsList = ['syria', 'lebanon'];
  String dropdownvalue = 'syria';
      static String id = "Profile6";

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
                                Navigator.of(context).popUntil((route) => route.settings.name == Profile5.id);
Navigator.pushNamed(context, Profile5.id);  
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
      Column(
        children: [

     
          SizedBox(
            height: 10,
          ),
           Container(  padding: EdgeInsets.only(top:10,bottom:10,right: 10,left:10),
 color: Color.fromARGB(255, 252, 249, 255),             
  width: double.infinity,
                 height: 60,

           child: Text(
              "Personal Information",
              style: GoogleFonts.leckerliOne(
                color:  Color(0xFF4B0B8A),
                fontSize: 22,
                
                //fontWeight: FontWeight.bold,
              ),
            
            ),
         ),
          SizedBox(
            height: 25,
          ),
           Container(
            padding: EdgeInsets.only(top: 1, bottom: 20, right: 180, left: 10),
            child: Text(
              'Place of residence',
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF4B0B8A),
                  fontWeight: FontWeight.bold
                  ),
            ),
          ),
          MyWidget2(),
             SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(top: 1, bottom: 20, right: 220, left: 10),
            child: Text(
              'Postal code',
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF4B0B8A),
                  fontWeight: FontWeight.bold
                  ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 340,
            height: 60,
            child: TextFormField(
              controller: fullNameController,
              keyboardType: TextInputType.name,
              // obscureText: true,
              onFieldSubmitted: (String value) {
                print(value);
              },
              onChanged: (String value) {
                print(value);
              },
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(19)),

                // labelText: 'password',
                //suffix: Icon(Icons.show_chart_outlined),
              ),
              cursorColor: Colors.purple,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
           padding: EdgeInsets.only(top: 1, bottom: 10, right: 280, left: 3),
            child: Text(
              'City',
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF4B0B8A),
                 fontWeight: FontWeight.bold
                ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 340,
            height: 60,
            child: TextFormField(
              controller: birthDateController,
              keyboardType: TextInputType.datetime,
              obscureText: true,
              onFieldSubmitted: (String value) {
                print(value);
              },
              onChanged: (String value) {
                print(value);
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(19),
                ),
                // labelText: 'password',
                suffix: Icon(Icons.show_chart_outlined),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
          width: 280,
                height: 55,
                decoration: BoxDecoration(borderRadius:BorderRadius.circular(18),
                                color: Color(0xFF4B0B8A),
 ),
            child: MaterialButton(
              onPressed: () {
                print(fullNameController.text);
                print(birthDateController.text);
                
                   Navigator.of(context).popUntil((route) => route.settings.name == Profile7.id);
Navigator.pushNamed(context, Profile7.id);  
              },
              child: Text(
                'next',
                style: TextStyle(
                    fontSize: 22,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      )
    ]));
  }
}
