import 'package:aprilflutter/Myfamily/homegridvieweg.dart';
import 'package:aprilflutter/Myfamily/myfamilyregpage.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Myfamilylogin(),
  ));
}

class Myfamilylogin extends StatefulWidget {
  @override
  State<Myfamilylogin> createState() => _MyfamilyloginState();
}

class _MyfamilyloginState extends State<Myfamilylogin> {
  GlobalKey<FormState> formkey = GlobalKey();

  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 900,
        width: 500,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/image/circlesbg.jpg"),
          fit: BoxFit.fill,
        )),
        child: Column(
          children: [
            Form(
              key: formkey,
              child: Padding(
                padding: const EdgeInsets.only(top: 90),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 15, left: 150, right: 150),
                      child: Text("My Family",
                          style: GoogleFonts.abhayaLibre(
                              fontWeight: FontWeight.bold, fontSize: 25,color: Colors.white)),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 70, left: 70, right: 70),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Username",
                          labelText: "Username",
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(60)),
                        ),
                        validator: (email) {
                          if (email!.isEmpty && !email.contains("@") ||
                              !email.contains(".")) {
                            return "Please enter a valid Email";
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 50, left: 70, right: 70),
                      child: TextFormField(
                        obscureText: showpass,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                          hintText: "Password",
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
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(60)),
                        ),
                        validator: (password) {
                          if (password!.isEmpty || password.length < 6) {
                            return "Enter a valid password";
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue[800],
                            foregroundColor: Colors.black,
                            maximumSize: Size(200, 60),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                        onPressed: () {
                          var valid = formkey.currentState!.validate();
                          if (valid) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Homepg()));
                          }
                        },
                        child: Text("Login")),
                    SizedBox(
                      height: 50,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Myfamilyreg()));
                      },
                      child: Text(
                        "Not a user ? Create an account ",
                        style: TextStyle(color: Colors.blue[900]),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
