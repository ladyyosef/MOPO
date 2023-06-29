import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';






import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';



import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({key});

  static const appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: const Center(
        child: Text('My Page!'),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
/*class Dr extends StatelessWidget {
  const Dr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      drawer:NavigationDrawer(),
    );
  }
}
class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildHeader(context),
            buildMenuItem(context),
          ],
        )),
      );
  Widget buildHeader(BuildContext context) => Container(
    
    padding: EdgeInsets.only(
      top: MediaQuery.of(context).padding.top,

    ),
    child: Row(children: [
      CircleAvatar(
        radius: 22,
        backgroundImage:NetworkImage(''),
      ),
      SizedBox(width: 12,),
      Text(
              'Lady Abo Alenin',
              style: GoogleFonts.lexendExa(
                  fontSize: 0,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold),
            ),
    ]),
  );
    Widget buildMenuItem(BuildContext context) => Container(
      padding: EdgeInsets.all(24),
      child: Wrap(
        runSpacing: 16,
       children: [
        Container(
          color: Color(0xFFFAFF00).withOpacity(0.8),
          child: ListTile(
            leading:Icon(Icons.private_connectivity_rounded),
            title: Text('Privacy and protection'),
            onTap: (){},
          ),
        ),
       ],
      ),
    );

}*/
