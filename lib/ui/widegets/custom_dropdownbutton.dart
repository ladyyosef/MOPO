import 'dart:math';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_2/ui/Screens/wallet2.dart';
import 'package:flutter_application_2/ui/widegets/currencies.dart';
import 'package:google_fonts/google_fonts.dart';

class DropDownList1 extends StatefulWidget {
  DropDownList1({Key? key}) : super(key: key);

  @override
  State<DropDownList1> createState() => _DropDownList1State();
}

class _DropDownList1State extends State<DropDownList1> {
  String _selected = "";

  List<Map> _myjson = [
    {'id': '1', 'image': 'assets/images/DBtc.png', 'name': 'BTC'},
    {'id': '2', 'image': 'assets/images/DEth.png', 'name': 'ETH'},
    {'id': '3', 'image': 'assets/images/DLit.png', 'name': 'LIT'},
    {'id': '4', 'image': 'assets/imagesDUsdt.png', 'name': 'USDT'},
    {'i/d': '5', 'image': 'assets/images/DNeo.png', 'name': 'NEO'},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Expanded(
              child: DropdownButtonHideUnderline(
            child: ButtonTheme(
              alignedDropdown: true,
              child: DropdownButton(
                hint: Text('Select Currinse'),
                value: _selected,
                onChanged: (newValue) {
                  setState(() {
                    _selected = newValue.toString();
                  });
                },
                items: _myjson.map((bankItem) {
                  return DropdownMenuItem(
                      value: bankItem['id'].toString(),
                      child: Row(
                        children: [
                          Image.asset(
                            bankItem['image'],
                            width: 25,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(bankItem['name']),
                          )
                        ],
                      ));
                }).toList(),
              ),
            ),
          )),
        ],
      ),
    ));
  }
}
