import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyRadioPage extends StatefulWidget {
  @override
  _MyRadioPageState createState() => _MyRadioPageState();
}

class _MyRadioPageState extends State<MyRadioPage> {
  int selectedRadio = 1;

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return 
        Radio(
          value: 1,
          groupValue: selectedRadio,
          activeColor: Colors.blue,
          onChanged: ( var val1) {
            setSelectedRadio;
            
          },
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap
    );
  }
}