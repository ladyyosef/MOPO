import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/ui/Screens/Wallet6.dart';
import 'package:flutter_application_2/ui/Screens/controllers/WalletController.dart';
import 'package:flutter_application_2/ui/Screens/etherem.dart';
import 'package:flutter_application_2/ui/Screens/lit.dart';
import 'package:flutter_application_2/ui/Screens/market1.dart';
import 'package:flutter_application_2/ui/Screens/price_alrte.dart';
import 'package:flutter_application_2/ui/Screens/profile1.dart';
import 'package:flutter_application_2/ui/Screens/usdt.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_2/ui/widegets/second_appbar.dart';
import '../Screens/home.dart';
import '../Screens/profile8.dart';
import '../Screens/wallet1.dart';
import '../widegets/Nav.dart';
import '../widegets/h_appbar.dart';
import '../widegets/home_appbar.dart';

class Pages extends StatefulWidget {
  static const String id = 'pages'; // إضافة الخاصية الثابتة id
  Pages({key});

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  int selectedIndex = 0;
  List<Widget> pages = const [];

  @override
  void initState() {
    super.initState();

    WalletController.getCards().then((value) {
      if (value.isNotEmpty) {
        pages = [
          Home(),
          Market1(),
          Wallet6(),
          Profile8(),
        ];
      } else {
        pages = [
          Home(),
          Market1(),
          Wallet1(),
          Profile8(),
        ];
      }

      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: browserBottomNavBar(
          currentIndex: selectedIndex,
          onTap: (Index) {
            setState(() {
              selectedIndex = Index;
            });
          }),
      body: pages.isEmpty
          ? Center(
              child: CircularProgressIndicator(),
            )
          : pages.elementAt(selectedIndex),
    ));
  }
}
