import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            child: Center(child: Text("profile")),
          ),
          TextFormField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            onFieldSubmitted: (String value) {
              print(value);
            },
            onChanged: (String value) {
              print(value);
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Email Address',
              prefixIcon: Icon(Icons.email),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          TextFormField(
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
              border: OutlineInputBorder(),
              labelText: 'password',
              prefixIcon: Icon(Icons.password),
              suffix: Icon(Icons.show_chart_outlined),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.blue,
            child: MaterialButton(
              onPressed: () {
                print(emailController.text);
                print(passwordController.text);
              },
              child: Text(
                'login',
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don\'t have an account?"),
              TextButton(onPressed: () {}, child: Text('Register Now'))
            ],
          )
        ],
      )),
    );
  }
}
