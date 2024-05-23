import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Regpage(),
  ));
}

class Regpage extends StatefulWidget {
  @override
  State<Regpage> createState() => _RegpageState();
}

class _RegpageState extends State<Regpage> {
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blue[65],
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50, left: 70, right: 70),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Name",
                  labelText: "Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.horizontal(
                          left: Radius.zero, right: Radius.zero))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70, right: 70, top: 30),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Username",
                  labelText: "Username",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.horizontal(
                        left: Radius.zero, right: Radius.zero),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 70, right: 70),
            child: TextField(
              obscureText: showpass,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                  hintText: "Enter your password",
                  labelText: "Password",
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (showpass) {
                            showpass = false;
                          } else {
                            showpass = true;
                          }
                        });
                      },
                      icon: Icon(showpass == true
                          ? Icons.visibility_off
                          : Icons.visibility)),
                  border: OutlineInputBorder(borderRadius: BorderRadius.zero)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70, right: 70, top: 30),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Confirm your password",
                  labelText: "Confirm password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.horizontal(
                        left: Radius.zero, right: Radius.zero),
                  )),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[700],
                  foregroundColor: Colors.black,
                  maximumSize: Size(200, 60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
              onPressed: () {},
              child: Text("Register")),
          SizedBox(
            height: 50,
          ),
          TextButton(
              onPressed: () {}, child: Text("Already a user ? Login here",
            style: TextStyle(color: Colors.blue[900]),))
        ],
      ),
    );
  }
}
