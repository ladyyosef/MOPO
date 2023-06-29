import 'package:flutter/material.dart';
class Market extends StatelessWidget {
   var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:AboutDialog(
        children: [
         
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'email',
                style: TextStyle(
                    fontSize: 22,
                    color: Color(0xFF4B0B8A),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 26,
              ),
              Container(
                width: 359,
                height: 64,
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
                height: 42,
              ),
              Text(
                'Password',
                style: TextStyle(
                    fontSize: 22,
                    color: Color(0xFF4B0B8A),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 26,
              ),
              Container(
                width: 359,
                height: 64,
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
                height: 71,
              ),
              Container(
                width: 295,
                height: 55,
                color: Color(0xFF4B0B8A),
                child: MaterialButton(
                  onPressed: () {
                    print(emailController.text);
                    print(passwordController.text);
                  },
                  child: Text(
                    'login',
                    style: TextStyle(
                        fontSize: 22,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ],
        
      ),);
    
  }
}