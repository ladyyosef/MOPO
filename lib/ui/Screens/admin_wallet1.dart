import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'admin_wallet2.dart';

class AdminWallet1 extends StatefulWidget {
  const AdminWallet1({Key? key}) : super(key: key);
      static String id = "AdminWallet1";


  @override
  State<AdminWallet1> createState() => _AdminWallet1State();
}

class _AdminWallet1State extends State<AdminWallet1> {
      static String id = "AdminWallet4";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4B0B8A),
      body:   GestureDetector(
        child: Center(
          child: Image.asset(
                          'assets/images/A3.png',
                          fit: BoxFit.cover,
                        ),
        ),
        onTap: (){
               Navigator.of(context).popUntil((route) => route.settings.name ==AdminWallet2.id);
Navigator.pushNamed(context, AdminWallet2.id); 
        },
      ),
    );
  }
}
