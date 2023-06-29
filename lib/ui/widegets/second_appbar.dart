import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_2/ui/Screens/home.dart';

import '../Screens/notification.dart';
import 'Pages.dart';

class SecondAppbar extends StatelessWidget {
  const SecondAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return      Container(
                    width: 425,
                    height: 69,
                    color: Colors.white,
                    child: Row(
                      children: [
                       
                              
                            Container(
                            padding: EdgeInsets.all(4),
                            child: IconButton(
  //iconSize: 72,
  icon:  Icon(Icons.arrow_back),
  onPressed: () {
     Navigator.of(context).popUntil((route) => route.settings.name ==Home.id);
Navigator.pushNamed(context, Pages.id); 
                       
  },
)),
                        SizedBox(
                          width: 150,
                        ),
                        Container(width: 120,
                        height: 90,
                          child: Image.asset('assets/images/LogoHome.png'))
                      ],
                    ),
                  )
             ;
  }
}