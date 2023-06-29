import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Switch1 extends StatefulWidget {
  Switch1({key});
  @override
  State<Switch1> createState() => _Switch1State();
}

class _Switch1State extends State<Switch1> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
        width: 40,
        height: 20,
        valueFontSize: 12,
        toggleSize: 20,
        value: status,
        borderRadius: 30,
        padding: 4,
        showOnOff: false,
        activeColor: Color(0xFF4B0B8A),
        inactiveColor: Color(0xFFCEBBE1),
        onToggle: (val) {
          setState(() {
            status = val;
          });
        },
      );
  }
}
