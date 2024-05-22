import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Loginpage(),
  ));
}

class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 150, right: 120),
            child: Text(
              "Login page",
              style: TextStyle(color: Colors.green, fontSize: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 70, right: 70),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Username",
                labelText: "Username",
                prefixIcon:Icon(Icons.person),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(60)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 70, right: 70),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Password",
                labelText: "Password",
                prefixIcon: Icon(Icons.password),
                suffixIcon: Icon(Icons.visibility_off),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(60)),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.black,
                  maximumSize: Size(200, 60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
              onPressed: () {},
              child: Text("Login")),
          SizedBox(
            height: 50,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Not a user ? Create an account ",
              style: TextStyle(color: Colors.green),
            ),
          )
        ],
      ),
    );
  }
}