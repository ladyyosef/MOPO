import 'dart:async';

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

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_2/ui/Screens/Wallet8.dart';
import 'package:flutter_application_2/ui/Screens/Wallet9.dart';
import 'package:flutter_application_2/ui/Screens/buy.dart';
import 'package:flutter_application_2/ui/Screens/recevie.dart';
import 'package:flutter_application_2/ui/Screens/send.dart';
import 'package:flutter_application_2/ui/Screens/trade.dart';
import 'package:flutter_application_2/ui/Screens/trade1.dart';
import 'package:flutter_application_2/ui/Screens/wallet2.dart';
import 'package:flutter_application_2/ui/Screens/wallet3.dart';
import 'package:flutter_application_2/ui/widegets/currencies.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widegets/Pages.dart';
import '../widegets/wallet_appbar.dart';
import 'Wallet6.dart';
import 'controllers/CardWallet.dart';
import 'model/classes.dart';
//mport 'package:flutter_application_2/ui/widegets/wallet_abbpar.dart';

class Wallet7 extends StatefulWidget {
  const Wallet7({key});
  static String id = "Wallet7";

  @override
  State<Wallet7> createState() => _Wallet7State();
}

class _Wallet7State extends State<Wallet7> {
  final streamControlelr = StreamController<List<CreditCard>>();

  @override
  void initState() {
    super.initState();

    CardWalletController.getcard()
        .then((value) => streamControlelr.sink.add(value));
  }

  @override
  Widget build(BuildContext context) {
    return WalletAppbar(
      child: Column(children: [
        Container(
          padding: EdgeInsets.only(top: 50, bottom: 20, right: 0, left: 10),
          child: Text(
            "My Wallet",
            style: GoogleFonts.lexend(
              color: Color(0xFF4B0B8A),
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Container(
                  width: 65,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFF4B0B8A),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: IconButton(
                    //iconSize: 72,
                    color: Colors.white,
                    icon: Image.asset(
                      'assets/images/send.png',
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .popUntil((route) => route.settings.name == Send.id);
                      Navigator.pushNamed(context, Send.id);
                    },
                  ),
                ),
                Text(
                  "Send",
                  style: GoogleFonts.lexend(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  width: 65,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFF4B0B8A),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: IconButton(
                    //iconSize: 72,
                    color: Colors.white,
                    icon: Image.asset(
                      'assets/images/rec.png',
                    ),
                    onPressed: () {
                      Navigator.of(context).popUntil(
                          (route) => route.settings.name == Recevie.id);
                      Navigator.pushNamed(context, Recevie.id);
                    },
                  ),
                ),
                Text(
                  "Receive",
                  style: GoogleFonts.lexend(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  width: 65,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFF4B0B8A),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: IconButton(
                    //iconSize: 72,
                    color: Colors.white,
                    icon: Image.asset(
                      'assets/images/buy.png',
                    ),
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => NBuy()));
                    },
                  ),
                ),
                Text(
                  "Buy",
                  style: GoogleFonts.lexend(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  width: 65,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFF4B0B8A),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: IconButton(
                    //iconSize: 72,
                    color: Colors.white,
                    icon: Image.asset(
                      'assets/images/trade.png',
                    ),
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => Trade1()));
                    },
                  ),
                ),
                Text(
                  "Trade",
                  style: GoogleFonts.lexend(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          color: Color(0xFFD9D9D9),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 180,
                height: 45,
                //padding: EdgeInsets.only(top:5,bottom:5,right: 1,left: 10),
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  border: Border(
                    bottom: BorderSide(
                      //                    <--- top side
                      color: Color(0xFF6C696F),

                      width: 3.0,
                    ),
                  ),
                ),

                //borderRadius: BorderRadius.circular(15),

                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).popUntil(
                          (route) => route.settings.name == Wallet6.id);
                      Navigator.pushNamed(context, Pages.id);
                    },
                    child: Text(
                      'Coins',
                      style: GoogleFonts.inter(
                        color: Color(0xFF6C696F),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ),
              Container(
                width: 180,
                height: 45,
                //padding: EdgeInsets.only(top:5,bottom:5,right: 1,left: 10),
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  border: Border(
                    bottom: BorderSide(
                      //                    <--- top side
                      color: Color(0xFF4B0B8A),

                      width: 3.0,
                    ),
                  ),
                ),

                //borderRadius: BorderRadius.circular(15),

                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Card',
                      style: GoogleFonts.inter(
                        color: Color(0xFF4B0B8A),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        StreamBuilder<List<CreditCard>>(
            stream: streamControlelr.stream,
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              final card = snapshot.data!;
              return Column(
                children: [
                  ...card.map(
                    (cd) => Container(
                      width: 370,
                      height: 130,
                      color: Color(0xFFDDDBDB).withOpacity(0.4),
                      //padding: EdgeInsets.only(top:20,bottom:15,right: 10,left: 10),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              width: 120,
                              height: 90,
                              child: Image.network(cd.type)),
                          Container(
                            padding: EdgeInsets.only(
                                top: 40, bottom: 8, right: 5, left: 10),
                            child: Column(
                              children: [
                                Text(
                                  cd.holderName,
                                  style: GoogleFonts.lexend(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,

                                    //fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "${cd.expireDate.year}-${cd.expireDate.month}-${cd.expireDate.day}",
                                  style: GoogleFonts.lexend(
                                    color: Color(0xFF534C4C),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,

                                    //fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: 5, bottom: 40, right: 5, left: 40),
                              child: IconButton(
                                //iconSize: 72,
                                icon: Image.asset('assets/images/Xicon.png'),
                                onPressed: () async {
                                  await CardWalletController.deletecard(cd.id);
                                  streamControlelr.sink.add(
                                      await CardWalletController.getcard());
                                },
                              )),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              );
            }),
        Container(
          padding: EdgeInsets.only(top: 1, bottom: 1, right: 30, left: 30),
          // width: 80,
          //height: 40,
          decoration: BoxDecoration(
              color: Color(0xFF4B0B8A),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Color(0xFF4B0B8A),
                width: 2,
              )),
          child: TextButton(
              onPressed: () {
                Navigator.of(context)
                    .popUntil((route) => route.settings.name == Wallet2.id);
                Navigator.pushNamed(context, Wallet2.id);
              },
              child: Text(
                'Add another one',
                style: GoogleFonts.lexend(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              )),
        )
      ]),
    );
  }
}
