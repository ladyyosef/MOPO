import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'second_appbar.dart';


class WalletAppbar extends StatelessWidget {
  const WalletAppbar({Key? key, required this.child,  }) : super(key: key);

  final Widget child;
  @override
  
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset('assets/images/W6.png'),
            ListView(
              children: [
                SizedBox(height: 10),
                SecondAppbar(),
                child,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
