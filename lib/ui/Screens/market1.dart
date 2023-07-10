import 'dart:async';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_2/ui/Screens/bitcoin.dart';
import 'package:flutter_application_2/ui/Screens/etherem.dart';
import 'package:flutter_application_2/ui/Screens/home.dart';
import 'package:flutter_application_2/ui/Screens/lit.dart';
import 'package:flutter_application_2/ui/Screens/market2.dart';
import 'package:flutter_application_2/ui/Screens/market3.dart';
import 'package:flutter_application_2/ui/Screens/neo.dart';
import 'package:flutter_application_2/ui/Screens/usdt.dart';
import 'package:flutter_application_2/ui/Screens/xrp.dart';
import 'package:flutter_application_2/ui/widegets/custom_scaffold_market.dart';
import 'package:flutter_application_2/ui/widegets/favorite.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widegets/Pages.dart';
import '../widegets/search.dart';
import 'controllers/Martket1Controller.dart';
import 'model/classes.dart';

class Market1 extends StatefulWidget {
  const Market1({Key? key}) : super(key: key);
  static String id = "Market1";

  @override
  State<Market1> createState() => _Market1State();
}

class _Market1State extends State<Market1> {
  var Search = TextEditingController();

  final streamControlelr = StreamController<List<CurrencyData>>();

  @override
  void initState() {
    super.initState();

    WatichlistController.getcurrency()
        .then((value) => streamControlelr.sink.add(value));
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffoldMarket(
      child: Column(children: [
        Container(
          padding: EdgeInsets.only(top: 20, bottom: 30, right: 220, left: 10),
          child: Text(
            "Market",
            style: GoogleFonts.lexendExa(
              color: Color(0xFF4B0B8A),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        GestureDetector(
          child: Container(
            width: 300,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  width: 1,
                  color: Color(0xFF4B0B8A),
                ),
                color: Colors.white),
            child: Row(
              children: [
                Icon(Icons.search),
                Text(
                  "Search currencies",
                  style: GoogleFonts.lexendExa(
                    color: Color(0xFF4B0B8A),
                    fontSize: 11,
                    //fontWeight: FontWeight.bold,

                    //fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          onTap: () async {
            await showDialog(
              context: context,
              builder: (_) => AlertDialog(
                content: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Search currencies",
                  ),
                  onChanged: (value) => Search.text = value,
                ),
                actions: [
                  TextButton(
                      onPressed: Navigator.of(context).pop,
                      child: Text('Search')),
                ],
              ),
            );
            if (Search.text.isNotEmpty) {
              streamControlelr.sink
                  .add(await WatichlistController.getcurrency(Search.text));
            }
          },
        ),
        // Icon(Icons.search),
        Container(
          padding: EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                //padding: EdgeInsets.only(top:10,bottom:10,right: 100,left: 10),

                decoration: BoxDecoration(
                    color: Color(0xFFEDE6E6),
                    borderRadius: BorderRadius.circular(10)),
                width: 95,
                height: 50,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: 10, bottom: 5, right: 5, left: 10),
                        child: Text(
                          "Watchlist",
                          style: GoogleFonts.lexendExa(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 10,
                            fontWeight: FontWeight.bold,

                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.list,
                        color: Color(0xFF4ECB71),
                        size: 18,
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  //padding: EdgeInsets.only(top:10,bottom:10,right: 100,left: 10),

                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  width: 95,
                  height: 50,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              top: 10, bottom: 5, right: 5, left: 10),
                          child: Text(
                            "Best Value",
                            style: GoogleFonts.lexendExa(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 8,
                              fontWeight: FontWeight.bold,

                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xFFFAFF00),
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.of(context)
                      .popUntil((route) => route.settings.name == Market2.id);
                  Navigator.pushNamed(context, Market2.id);
                },
              ),
              GestureDetector(
                child: Container(
                  //padding: EdgeInsets.only(top:10,bottom:10,right: 100,left: 10),

                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  width: 95,
                  height: 50,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              top: 10, bottom: 5, right: 5, left: 10),
                          child: Text(
                            "Trending",
                            style: GoogleFonts.lexendExa(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 10,
                              fontWeight: FontWeight.bold,

                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.arrow_circle_up_rounded,
                          color: Color(0xFF699BF7),
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Market3()));
                },
              ),
            ],
          ),
        ),
        StreamBuilder<List<CurrencyData>>(
            stream: streamControlelr.stream,
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              final currency = snapshot.data!;
              print('csmaipokcsoak');
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...currency.map(
                    (curr) => GestureDetector(
                      child: Container(
                        width: 350,
                        height: 80,
                        padding: EdgeInsets.only(
                            top: 10, bottom: 5, right: 5, left: 10),
                        decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withOpacity(0.4)),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.network(curr.logo),
                              Container(
                                padding: EdgeInsets.only(
                                    top: 15, bottom: 8, right: 5, left: 10),
                                child: Column(
                                  children: [
                                    Text(
                                      curr.abbreviation,
                                      style: GoogleFonts.lexendExa(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,

                                        //fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "${curr.percentage}%",
                                      style: GoogleFonts.lexendExa(
                                        color: Color(0xFF534C4C),
                                        fontSize: 8,
                                        fontWeight: FontWeight.bold,

                                        //fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    top: 15, bottom: 8, right: 5, left: 10),
                                child: Column(
                                  children: [
                                    Text(
                                      "${curr.newPrice}\$",
                                      style: GoogleFonts.lexendExa(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,

                                        //fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "${curr.oldPrice}\$",
                                      style: GoogleFonts.lexendExa(
                                        color: Color(0xFF534C4C),
                                        fontSize: 8,
                                        fontWeight: FontWeight.bold,

                                        //fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => Lit(
                                      currencyId: curr.id,
                                    )));
                      },
                    ),
                  ),
                ],
              );
            }),
      ]),
    );
  }
}

class CustomSearch extends SearchDelegate {
  List<String> allData = ['Etherem', 'bitcoin', 'usdt', 'neo', 'xpr', 'lit'];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in allData) {
      if (item.toLowerCase().contains(query.toLowerCase())) {}
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in allData) {
      if (item.toLowerCase().contains(query.toLowerCase())) {}
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }
}
