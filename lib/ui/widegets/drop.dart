import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String? selectedGender="BTC";

  @override
  Widget build(BuildContext context) {
    return Container(
 color:  Color(0xFFFFFFFF),
 padding: EdgeInsets.only(right: 200),
       child: DropdownButton(
        iconSize: 30,
        isExpanded: false,
        
        items: [
          DropdownMenuItem(
            child: Row(
              children: [
                Text(
                  "BTC",
                  style: GoogleFonts.lexend(
                    color: Color(0xFF4B0B8A),
                    fontSize: 20,
                    //fontWeight: FontWeight.bold,
                  ),
                ),                SizedBox(width: 20,),

                Image.asset('assets/images/BtcT.png')
              ],
            ),
            value: "BTC",
          ),
          DropdownMenuItem(
            child: Row(
              children: [
                Text(
                  "NEO",
                  style: GoogleFonts.lexend(
                    color: Color(0xFF4B0B8A),
                    fontSize: 20,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 20,),
                Image.asset('assets/images/NeoT1.png')
              ],
            ),
            value: "NEO",
          ),
          DropdownMenuItem(
            child: Row(
              children: [
                Text(
                  "ETH",
                  style: GoogleFonts.lexend(
                    color: Color(0xFF4B0B8A),
                    fontSize: 20,
                    //fontWeight: FontWeight.bold,
                  ),
                ),                SizedBox(width: 20,),

                Image.asset('assets/images/EthT1.png')
              ],
            ),
            value: "ETH",
          ),
          DropdownMenuItem(
            child: Row(
              children: [
                Text(
                  "XRP",
                  style: GoogleFonts.lexend(
                    color: Color(0xFF4B0B8A),
                    fontSize: 20,
                    //fontWeight: FontWeight.bold,
                  ),
                ),                SizedBox(width: 20,),

                Image.asset('assets/images/XrpT1.png')
              ],
            ),
            value: "XRP",
          ),
          DropdownMenuItem(
            child: Row(
              children: [
                Text(
                  "LIT",
                  style: GoogleFonts.lexend(
                    color: Color(0xFF4B0B8A),
                    fontSize: 20,
                    //fontWeight: FontWeight.bold,
                  ),
                ),                SizedBox(width: 20,),

                Image.asset('assets/images/LitT1.png')
              ],
            ),
            value: "LIT",
          ),
          DropdownMenuItem(
            child: Row(
              children: [
                Text(
                  "USDT",
                  style: GoogleFonts.lexend(
                    color: Color(0xFF4B0B8A),
                    fontSize: 20,
                    //fontWeight: FontWeight.bold,
                  ),
                ),                SizedBox(width: 10,),

                Image.asset('assets/images/UsdtT1.png')
              ],
            ),
            value: "USDT",
          ),
        ],
        onChanged: (String? val) {
          setState(() {
            selectedGender = val;
          });
        },
        value: selectedGender, // Set the default value for DropdownButton
      ),
    );
  }
}
