import 'package:flutter/material.dart';
import 'package:flutter_application_2/ui/Screens/profile1.dart';
import 'package:flutter_application_2/ui/Screens/profile3.dart';
import 'package:flutter_application_2/ui/Screens/profile8.dart';
import 'package:flutter_application_2/ui/widegets/custom_scaffold.dart';

import '../widegets/Pages.dart';
import 'home.dart';

class Profile2 extends StatelessWidget {
  Profile2({Key? key}) : super(key: key);
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  static String id = "Profile2";

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Container(
            width: 425,
            height: 55,
            color: Colors.white,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context)
                        .popUntil((route) => route.settings.name == Profile1.id);
                    Navigator.pushNamed(context, Pages.id);
                  },
                  icon: Icon(Icons.arrow_back),
                ),
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
          Image.asset('assets/images/pro2.png'),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(top: 1, bottom: 20, right: 250, left: 10),
                child: Text(
                  'Email',
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF4B0B8A),
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 340,
                height: 60,
                child: TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  // obscureText: true,
                  onFieldSubmitted: (String value) {
                    print(value);
                  },
                  onChanged: (String value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(19)),
                    // labelText: 'password',
                    //suffix: Icon(Icons.show_chart_outlined),
                  ),
                  cursorColor: Colors.purple,
                  
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(top: 1, bottom: 10, right: 230, left: 10),
                child: Text(
                  'Password',
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF4B0B8A),
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 340,
                height: 60,
                child: TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
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
                    suffix: Icon(Icons.show_chart_outlined),
                  ),
               
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 280,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Color(0xFF4B0B8A),
                ),
                child: MaterialButton(
                  onPressed: () {
                   
                    print(emailController.text);
                    print(passwordController.text);
                    Navigator.of(context)
                        .popUntil((route) => route.settings.name == Profile8.id);
                    Navigator.pushNamed(context, Profile8.id);
                  },
                  child: Text(
                    'login',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}