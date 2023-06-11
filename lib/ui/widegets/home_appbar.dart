import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../Screens/nav_pages/nav_bar.dart';
import 'h_appbar.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:fl_chart/fl_chart.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Nav_Par(),
        body: Stack(
          children: [
            Container(
                width: double.infinity,
                child: Image.asset('assets/images/home.png')),
            ListView(
              children: [
                SizedBox(height: 10),
                HAppbar(),
                child,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
