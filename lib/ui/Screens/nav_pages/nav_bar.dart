import 'package:flutter/material.dart';
import 'package:flutter_application_2/ui/Screens/nav_pages/nav_wallet.dart';
import 'package:flutter_application_2/ui/Screens/wallet1.dart';

import '../home.dart';
import 'nav_market.dart';
import '../profile1.dart';

class Nav_Par extends StatefulWidget {
  @override
  _Nav_ParState createState() => _Nav_ParState();
  
}

class _Nav_ParState extends State<Nav_Par> {
  
  List pages = [
    Wallet1(),
    Home(),
    Profile1(),
    Market(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTap,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 53,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
              label: 'hhh', icon: Icon(Icons.wallet_travel)),
          BottomNavigationBarItem(
              label: 'hhh',
              icon: Image.asset('assets/images/cantar_start.png')),
          BottomNavigationBarItem(
              label: 'hhh', icon: Icon(Icons.account_circle)),
          BottomNavigationBarItem(
              label: 'hhh', icon: Icon(Icons.align_vertical_bottom)),
        ],
      ),
    );
  }
}
//
