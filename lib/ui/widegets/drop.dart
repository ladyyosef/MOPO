import 'package:flutter/material.dart';
import 'package:flutter_application_2/ui/Screens/controllers/Martket1Controller.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Screens/controllers/Market3Controller.dart';
import '../Screens/model/classes.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key, this.onChanged}) : super(key: key);

  final Function(int value, double price)? onChanged;

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int? selectedGender = 1;

  List<CurrencyData> currency = [];

  @override
  void initState() {
    super.initState();

    WatichlistController.getcurrency().then((value) {
      setState(() {
        currency = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return currency.isEmpty
        ? Center(
            child: CircularProgressIndicator(),
          )
        : Container(
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
                widget.onChanged!(
                    val ?? 1,
                    currency
                            .firstWhere((element) => element.id == val)
                            .newPrice ??
                        .0);
                setState(() {
                  selectedGender = val;
                });
                // widget.onChanged(selectedGender!);
              },
              value: selectedGender, // Set the default value for DropdownButton
            ),
          );
  }
}
