import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'hmpg.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Loginpage(),
  ));
}

class Loginpage extends StatefulWidget {
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  late SharedPreferences data;
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  late bool newuser;
  GlobalKey<FormState> formkey = GlobalKey();
  bool showpass = true;
  @override
  void initState(){
    checkuser();
    super.initState();
  }
  void checkuser() async{
    data = await SharedPreferences.getInstance();
    newuser = (data.getBool("newuser")??true);
    if(newuser==false){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Hmpgeg()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/image/logbg.jpg"),
                  fit: BoxFit.fill)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 150, right: 150),
                child: Text(
                  "Login page",
                  style: TextStyle(color: Colors.blue[900], fontSize: 30),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 70, right: 70),
                child: TextFormField(
                  controller: username,
                  decoration: InputDecoration(
                    hintText: "Username",
                    labelText: "Username",
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60)),
                  ),
                  // validator: (email) {
                  //   if (email!.isEmpty && !email.contains("@") ||
                  //       !email.contains(".")) {
                  //     return "Please enter a valid Email";
                  //   }
                  //   return null;
                  // },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 70, right: 70),
                child: TextFormField(
                  controller: password,
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
                    String usrnm = username.text;
                    String psswrd = password.text;
                    if (usrnm != "" && psswrd != "") {
                      print("Login Successful");
                      data.setString("username", usrnm);
                      data.setBool("newuser", false);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Hmpgeg()));
                    }
                  },
                  child: Text("Log In")),
              SizedBox(
                height: 50,
              ),
              TextButton(
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => Regpage()));
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
    );
  }
}
