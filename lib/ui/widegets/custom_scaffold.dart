import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_2/ui/Screens/nav_pages/nav_bar.dart';

import 'custom_appbar.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({Key? key, required this.child,  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:  Stack(
            children: [
              Image.asset('assets/images/bg.png'),
              ListView(
                children: [
                  SizedBox(height: 10),
                  child
                ],
              ),
                             

            ],
          ),
      ),
    );
  }
}
