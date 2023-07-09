import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/ui/Screens/Wallet6.dart';
import 'package:flutter_application_2/ui/Screens/controllers/HomeController.dart';
import 'package:flutter_application_2/ui/Screens/controllers/ShowUserController.dart';
import 'package:flutter_application_2/ui/Screens/etherem.dart';
import 'package:flutter_application_2/ui/Screens/lit.dart';
import 'package:flutter_application_2/ui/Screens/market1.dart';
import 'package:flutter_application_2/ui/Screens/preferred_currencies.dart';
import 'package:flutter_application_2/ui/Screens/price_alrte.dart';
import 'package:flutter_application_2/ui/Screens/privce.dart';
import 'package:flutter_application_2/ui/Screens/profile1.dart';
import 'package:flutter_application_2/ui/Screens/profile8.dart';
import 'package:flutter_application_2/ui/Screens/usdt.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_2/ui/widegets/second_appbar.dart';
import '../widegets/Nav.dart';
import '../widegets/Pages.dart';
import '../widegets/h_appbar.dart';
import '../widegets/home_appbar.dart';
import 'help.dart';
import 'language.dart';
import 'model/classes.dart';
import 'nav_pages/nav_bar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  static String id = 'Home';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          actions: [
            Container(
                width: 120,
                height: 100,
                child: Image.asset('assets/images/LogoHome.png')),
          ],
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 50),
            child: Column(children: [
              FutureBuilder<ShowUser>(
                  future: ShowUserController.getUser(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return Center(child: CircularProgressIndicator());
                    }
                    final user = snapshot.data!;
                    return Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xFFFAFF00), width: 2),
                              borderRadius: BorderRadius.circular(30)),
                          child: CircleAvatar(
                            maxRadius: 30,
                            minRadius: 30,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.person,
                              size: 45,
                              color: Color(0xFF4B0B8A),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          user.fullName,
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF4B0B8A),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    );
                  }),
              Divider(
                color: Color(0xFFFAFF00),
                thickness: 4,
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                child: Container(
                  height: 55,
                  color: Color(0xFFFAFF00).withOpacity(0.4),
                  child: Row(
                    children: [
                      Icon(
                        Icons.lock,
                        size: 25,
                        color: Color(0xFFFB8C00),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Privacy and protection',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF000000),
                          //fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.of(context)
                      .popUntil((route) => route.settings.name == Privce.id);
                  Navigator.pushNamed(context, Privce.id);
                },
              ),
              SizedBox(
                height: 6,
              ),
              Divider(
                color: Color(0xFFFAFF00),
              ),
              SizedBox(
                height: 12,
              ),
              GestureDetector(
                child: Container(
                  height: 55,
                  color: Color(0xFFFAFF00).withOpacity(0.4),
                  child: Row(
                    children: [
                      Icon(
                        Icons.language,
                        size: 25,
                        color: Color(0xFF008AFB),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Language',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF000000),
                          //fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.of(context)
                      .popUntil((route) => route.settings.name == Language.id);
                  Navigator.pushNamed(context, Language.id);
                },
              ),
              SizedBox(
                height: 6,
              ),
              Divider(
                color: Color(0xFFFAFF00),
              ),
              SizedBox(
                height: 12,
              ),
              GestureDetector(
                child: Container(
                  height: 55,
                  color: Color(0xFFFAFF00).withOpacity(0.4),
                  child: Row(
                    children: [
                      Icon(
                        Icons.favorite,
                        size: 25,
                        color: Color(0xFFEE4F41),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Preferred Currencies',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF000000),
                          //fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.of(context).popUntil((route) =>
                      route.settings.name == Preferred_currencies.id);
                  Navigator.pushNamed(context, Preferred_currencies.id);
                },
              ),
              SizedBox(
                height: 6,
              ),
              Divider(color: Color(0xFFFAFF00)),
              SizedBox(
                height: 12,
              ),
              GestureDetector(
                child: Container(
                  height: 55,
                  color: Color(0xFFFAFF00).withOpacity(0.4),
                  child: Row(
                    children: [
                      Icon(
                        Icons.account_circle_outlined,
                        size: 25,
                        color: Color(0xFF81FF9E),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'My Account',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF000000),
                          //fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.of(context)
                      .popUntil((route) => route.settings.name == Profile8.id);
                  Navigator.pushNamed(context, Profile8.id);
                },
              ),
              SizedBox(
                height: 6,
              ),
              Divider(
                color: Color(0xFFFAFF00),
              ),
              SizedBox(
                height: 12,
              ),
              GestureDetector(
                child: Container(
                  height: 55,
                  color: Color(0xFFFAFF00).withOpacity(0.4),
                  child: Row(
                    children: [
                      Icon(
                        Icons.wallet,
                        size: 25,
                        color: Color(0xFF6900FB),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'My Wallet',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF000000),
                          //fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.of(context)
                      .popUntil((route) => route.settings.name == Wallet6.id);
                  Navigator.pushNamed(context, Pages.id);
                },
              ),
              SizedBox(
                height: 6,
              ),
              Divider(
                color: Color(0xFFFAFF00),
              ),
              SizedBox(
                height: 12,
              ),
              GestureDetector(
                child: Container(
                  height: 55,
                  color: Color(0xFFFAFF00).withOpacity(0.4),
                  child: Row(
                    children: [
                      Icon(
                        Icons.help,
                        size: 25,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Help',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF000000),
                          //fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.of(context)
                      .popUntil((route) => route.settings.name == Help.id);
                  Navigator.pushNamed(context, Help.id);
                },
              ),
            ]),
          ),
        ),
        body: FutureBuilder<List<CurrencyData>>(
            future: HomeController.getcurrency(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              final currency = snapshot.data!;
              return Stack(children: [
                Container(
                    width: double.infinity,
                    child: Image.asset('assets/images/home.png')),
                ListView(
                  children: [
                    // SizedBox(height: 10),
                    // HAppbar(),
                    Column(
                      children: [
                        SizedBox(
                          height: 32,
                        ),
                        Container(
                          width: 360,
                          height: 180,
                          decoration: BoxDecoration(
                            //                             borderRadius: BorderRadius.circular(10),
                            color: Color(0xFF4B0B8A),
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                          top: 40,
                                          left: 10,
                                          right: 10,
                                          bottom: 10),
                                      child: Text(
                                        'The best way \n to trade \n digital currencies',
                                        style: GoogleFonts.poppins(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 16,
                                          //fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Image.asset('assets/images/HomeM.png')
                                  ],
                                ),
                                Container(
                                    width: 190,
                                    height: 190,
                                    child: Image.asset(
                                        'assets/images/HomeRopot.png'))
                              ]),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              top: 20, left: 8, right: 240, bottom: 10),
                          child: Text(
                            'Price Alrte',
                            style: GoogleFonts.poppins(
                              color: Color(0xFF4B0B8A),
                              fontSize: 20,
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        GestureDetector(
                          child: Container(
                            width: 300,
                            height: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                color: Color.fromARGB(255, 255, 255, 255),
                                border: Border.all(
                                  color: Color(0xFFFAFF00),
                                  width: 1,
                                )),
                            child: Column(children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset('assets/images/HomeB.png'),
                                  Text(
                                    'BTCUSDT just went \nabove 30123.232',
                                    style: GoogleFonts.poppins(
                                      color: Color(0xFF4B0B8A),
                                      fontSize: 15,
                                      //fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  IconButton(
                                    iconSize: 25,
                                    icon: Icon(Icons.arrow_drop_down),
                                    onPressed: () {
                                      // ...
                                    },
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Image.asset('assets/images/HomeLine.png'),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    'Buy',
                                    style: GoogleFonts.poppins(
                                      color: Color.fromARGB(255, 109, 107, 111),
                                      fontSize: 15,
                                      //fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Sell',
                                    style: GoogleFonts.poppins(
                                      color: Color.fromARGB(255, 109, 107, 111),
                                      fontSize: 15,
                                      //fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'More',
                                    style: GoogleFonts.poppins(
                                      color: Color(0xFF8567FF),
                                      fontSize: 15,
                                      //fontWeight: FontWeight.bold,/
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                          ),
                          onTap: () {
                            Navigator.of(context).popUntil((route) =>
                                route.settings.name == Price_Alrte.id);
                            Navigator.pushNamed(context, Price_Alrte.id);
                          },
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              top: 20, left: 8, right: 240, bottom: 10),
                          child: Text(
                            'Trending',
                            style: GoogleFonts.poppins(
                              color: Color(0xFF4B0B8A),
                              fontSize: 20,
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        ...currency.map(
                          (curr) => GestureDetector(
                              child: Container(
                                width: 350,
                                height: 80,
                                padding: EdgeInsets.only(
                                    top: 10, bottom: 5, right: 5, left: 10),
                                decoration: BoxDecoration(
                                    color: Color(0xFFDDDBDB).withOpacity(0.4)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color(0xFFFAFF00),
                                              width: 2),
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: CircleAvatar(
                                        maxRadius: 25,
                                        minRadius: 25,
                                        backgroundColor: Colors.white,
                                        backgroundImage:
                                            NetworkImage(curr.logo),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                          top: 15,
                                          bottom: 8,
                                          right: 5,
                                          left: 10),
                                      child: Column(
                                        children: [
                                          Text(
                                            curr.abbreviation,
                                            style: GoogleFonts.lexendExa(
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,

                                              //fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "${curr.percentage}%",
                                            style: GoogleFonts.lexendExa(
                                              color: Color(0xFFB82727),
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
                                          top: 15,
                                          bottom: 8,
                                          right: 5,
                                          left: 10),
                                      child: Column(
                                        children: [
                                          Text(
                                            "${curr.newPrice}\$",
                                            style: GoogleFonts.lexendExa(
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,

                                              //fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "${curr.oldPrice}\$",
                                            style: GoogleFonts.lexendExa(
                                              color: Color(0xFF534C4C),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,

                                              //fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => Lit(
                                              currencyId: curr.id,
                                            )));
                              }),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ],
                ),
              ]);
            }),
      ),
    );
  }
}
