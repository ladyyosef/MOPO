import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../Screens/notification.dart';

class CustomMarketAppbar extends StatelessWidget {
  const CustomMarketAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
                    width: 425,
                    height: 55,
                    color: Colors.white,
                    child: Row(
                      children: [
                               IconButton(onPressed: (){}, icon:Icon(Icons.settings)),

                           
                        SizedBox(
                          width: 200.0,
                        ),
                        Center(
                          child: Container(
                          width: 150,
                          height: 125,
                            child: Image.asset('assets/images/LogoHome.png')),
                        )
                      ],
                    ),
                  )
             ;
  }
}