import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Screens/controllers/Market3Controller.dart';
import '../Screens/model/classes.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key, this.onChanged}) : super(key: key);

  final Function(int value)? onChanged;

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int? selectedGender = 1;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CurrencyData>>(
        future: TrendingController.getcurrency(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          final currency = snapshot.data!;
          return Container(
            color: Color(0xFFFFFFFF),
            padding: EdgeInsets.only(right: 200),
            child: DropdownButton<int>(
              iconSize: 30,
              isExpanded: false,

              items: [
                ...currency.map(
                  (curr) => DropdownMenuItem(
                    child: Row(
                      children: [
                        Text(
                          curr.abbreviation,
                          style: GoogleFonts.lexend(
                            color: Color(0xFF4B0B8A),
                            fontSize: 20,
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Image.network(curr.logo)
                      ],
                    ),
                    value: curr.id,
                  ),
                ),
              ],
              onChanged: (int? val) {
                setState(() {
                  selectedGender = val;
                });
                // widget.onChanged(selectedGender!);
              },
              value: selectedGender, // Set the default value for DropdownButton
            ),
          );
        });
  }
}
