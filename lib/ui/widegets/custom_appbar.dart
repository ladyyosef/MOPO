import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return      Container(
                    width: 425,
                    height: 69,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Container(
                            padding: EdgeInsets.all(14),
                           child:IconButton(
  iconSize: 22,
  icon:  Icon(Icons.arrow_back),
  onPressed: () {
        
  },
)),
                        SizedBox(
                          width: 110.0,
                        ),
                        Container(
                          width: 150,
                          height: 125,
                          child: Image.asset('assets/images/LogoHome.png'))
                      ],
                    ),
                  )
             ;
  }
}