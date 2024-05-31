
import 'package:aprilflutter/Regpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Loginpage(),
  ));
}

class Loginpage extends StatelessWidget {
  GlobalKey<FormState> formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      body: Form(
        child: Column(
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
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Username",
                  labelText: "Username",
                  prefixIcon:Icon(Icons.person),
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(60)),
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
              padding: const EdgeInsets.only(top: 50, left: 70, right: 70),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Password",
                  labelText: "Password",
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: Icon(Icons.visibility_off),
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(60)),
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
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>Regpage()));
              },
              child: Text(
                "Not a user ? Create an account ",
                style: TextStyle(color: Colors.green),
              ),
            )
          ],
        ),
      ),
    );
  }
}
