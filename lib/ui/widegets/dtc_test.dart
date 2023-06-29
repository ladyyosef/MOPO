import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Dtc extends StatelessWidget {
  const Dtc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          elevation: 5,
          child: ListTile(
            leading: Icon(Icons.ramen_dining_sharp,color: Colors.yellowAccent),
            title: Text('Lady abo alenin'),
            subtitle: Text('Queen'),
            trailing:Icon(Icons.ramen_dining_sharp,color: Colors.yellowAccent),
          ),
        ),
           Card(
          elevation: 5,
          child: ListTile(
            leading: Icon(Icons.ramen_dining_sharp,color: Colors.yellowAccent),
            title: Text('Nada ata allah'),
            subtitle: Text('Queen'),
            trailing:Icon(Icons.ramen_dining_sharp,color: Colors.yellowAccent),
          ),
        ),
      ],
    );
  }
}
