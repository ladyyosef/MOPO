import 'dart:convert';

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
import 'package:flutter_application_2/data/controllers/api_controller.dart';
import 'package:flutter_application_2/ui/Screens/trade_var4.dart';
import 'package:flutter_application_2/ui/Screens/trade_var6.dart';
import 'package:flutter_application_2/ui/widegets/currencies.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widegets/Pages.dart';
import '../widegets/opration_appbar.dart';

class tradeVar5 extends StatefulWidget {
  tradeVar5({Key? key, required this.function}) : super(key: key);
  static String id = "TradeVar5";

  final Function(BuildContext context) function;

  @override
  State<tradeVar5> createState() => _tradeVar5State();
}

class _tradeVar5State extends State<tradeVar5> {
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return OprationAppbar(
        child: Column(
      children: [
        Container(
          width: 425,
          height: 55,
          color: Colors.white,
          child: Row(
            children: [
              IconButton(
                  onPressed: Navigator.of(context).pop,
                  icon: Icon(Icons.arrow_back)),
              SizedBox(
                width: 180.0,
              ),
              Center(
                child: Container(
                    width: 120,
                    height: 100,
                    child: Image.asset('assets/images/LogoHome.png')),
              )
            ],
          ),
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.only(top: 35, bottom: 10, right: 150, left: 5),
          child: Text(
            'Verification wallet',
            style: GoogleFonts.lexendDeca(
              fontSize: 25,
              color: Color(0xFF4B0B8A),
              //fontWeight: FontWeight.bold
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.only(top: 1, left: 13, right: 15, bottom: 30),
          child: Text(
            'Please enter the password of your wallet',
            style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Container(
          width: 250,
          height: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(19),
            color: Color(0xFFFAFF00).withOpacity(0.4),
          ),
          child: TextFormField(
            controller: passwordController,
            keyboardType: TextInputType.text,
            obscureText: true,
            onFieldSubmitted: (String value) {
              print(value);
            },
            onChanged: (String value) {
              print(value);
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(19),
              ),

              // labelText: 'password',
              //
              //suffix: Icon(Icons.show_chart_outlined),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 80,
        ),
        Container(
          width: 280,
          height: 55,
          //padding: EdgeInsets.only(top:5,bottom:5,right: 1,left: 10),
          decoration: BoxDecoration(
            color: Color(0xFF4B0B8A),
            borderRadius: BorderRadius.circular(15),
          ),
          child: TextButton(
              onPressed: () async {
                bool isSuccess = true;
                final r = await ApiController.post(
                  endpoint: 'authenticate-card',
                  body: {
                    'password': passwordController.text,
                  },
                  onError: (statusCode, body) {
                    print(body);
                    isSuccess = false;
                    showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                              title: Text(jsonDecode(body)['message']),
                              actions: [
                                TextButton(
                                    onPressed: Navigator.of(context).pop,
                                    child: Text('Ok')),
                              ],
                            ));
                  },
                );
                print(r);
                if (isSuccess) {
                  widget.function(context);
                }
              },
              child: Text(
                'Next',
                style: GoogleFonts.lexendExa(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              )),
        ),
      ],
    ));
  }
}
