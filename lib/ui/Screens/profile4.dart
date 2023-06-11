import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_2/ui/Screens/profile3.dart';
import 'package:flutter_application_2/ui/Screens/profile5.dart';
import 'package:flutter_application_2/ui/widegets/custom_scaffold.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widegets/Pages.dart';
import 'home.dart';

class Profile4 extends StatelessWidget {
  Profile4({Key? key}) : super(key: key);
  var VerificationController = TextEditingController();
    static String id = "Profile4";

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        child: Column(children: [
      Column(
        children: [
    Container(
                    width: 425,
                    height: 55,
                    color: Colors.white,
                    child: Row(
                      children: [
                               IconButton(onPressed: (){
                                Navigator.of(context).popUntil((route) => route.settings.name == Profile3.id);
Navigator.pushNamed(context, Profile3.id);  
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
            height: 35,
          ),
             
        Container(  padding: EdgeInsets.only(top:10,bottom:10,right: 10,left:10),
 color: Color.fromARGB(255, 252, 249, 255),             
  width: double.infinity,
                 height: 60,

           child: Text(
              "Verification code",
              style: GoogleFonts.leckerliOne(
                color:  Color(0xFF4B0B8A),
                fontSize: 22,
                
                //fontWeight: FontWeight.bold,
              ),
            
            ),
         ),
          
          
                
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(top: 1, left: 13, right: 15, bottom: 30),
            child: Text(
              'We have sent a verification code to your e-mail consisting of 6 number valid for 30 minutes, please enter it',
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 40,
      ),
      Container(
        width: 340,
        height: 66,
        child: TextFormField(
          controller: VerificationController,
          keyboardType: TextInputType.number,
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
            //
            //suffix: Icon(Icons.show_chart_outlined),
          ),
        ),
      ),
    MaterialButton(
          onPressed: () {
            print(VerificationController.text);
          },
          child: Container(
         padding: EdgeInsets.only(top:80,left: 200,right: 11,bottom:50 ),

            child: Text(
              'Not Sent',
              style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF4B0B8A),
                  fontWeight: FontWeight.bold),
                  
            ),
          ),
        ),
          SizedBox(height: 40,),
          Container(
             width: 280,
                height: 55,
                decoration: BoxDecoration(borderRadius:BorderRadius.circular(18),
                                color: Color(0xFF4B0B8A),
 ),
                  child: TextButton(
                  onPressed: () {
                   
                    Navigator.of(context).popUntil((route) => route.settings.name == Profile5.id);
Navigator.pushNamed(context, Profile5.id);  
                  
                  },
                  child: Text(
                    'next',
                    style: GoogleFonts.lexendExa(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )),),

      
    ]));

//     Scaffold(
//       body: Column(
//         children: [
//           Image.asset('assets/images/Line 1.png'),
//           SizedBox(
//             height: 10,
//           ),
//           Stack(
//             children: [
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Container(
//                     width: 425,
//                     height: 69,
//                     color: Colors.white,
//                     child: Row(
//                       children: [
//                         Container(
//                             padding: EdgeInsets.all(14),
//                             child: Icon(Icons.arrow_back)),
//                         SizedBox(
//                           width: 140.0,
//                         ),
//                         Image.asset('assets/images/LogoHome.png')
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     height: 1,
//                   ),

//                    Image.asset('assets/images/RectangleTop.png'),

//                 ],
//               )
//             ],
//           ),
//         ],
//       ),
//     );
  }
}
