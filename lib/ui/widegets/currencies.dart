import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_2/ui/Screens/nav_pages/nav_bar.dart';

import 'custom_market_appbar.dart';
class Currencies extends StatelessWidget {
  const Currencies({Key? key, required this.child,  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:  Stack(
            children: [
              Container(
                width: double.infinity,
                child: Image.asset('assets/images/curr.png')),
              ListView(
                children: [
                  SizedBox(height: 10),
                
                  child,
                /// Nav_Par(),
                ],
              ),
            ],
          ),
      ),
    );
  }
}