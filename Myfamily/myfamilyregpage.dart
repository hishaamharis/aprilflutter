import 'package:aprilflutter/Myfamily/homegridvieweg.dart';
import 'package:aprilflutter/Myfamily/loginpage.dart';


import 'package:flutter/material.dart';

class Myfamilyreg extends StatefulWidget {
  @override
  State<Myfamilyreg> createState() => _MyfamilyregState();
}

class _MyfamilyregState extends State<Myfamilyreg> {
  GlobalKey<FormState> formkey = GlobalKey();

  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.blue[200],
      title: Text("Registration Page",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),),
      backgroundColor: Colors.blue[65],
      body: Form(
        key: formkey,
        child: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/image/logbg.jpg"),
            fit: BoxFit.fill)),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50, left: 70, right: 70),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Name",
                    labelText: "Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.horizontal(
                          left: Radius.zero, right: Radius.zero),
                    ),
                  ),
                  validator: (name){
                    if(name!.length<6){
                      return "Enter a valid name";
                    }
                    return null;

                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70, right: 70, top: 30),
                child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Username",
                        labelText: "Username",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.zero, right: Radius.zero),
                        )
                    ),
                    validator: (email) {
                      if (email!.isEmpty && !email.contains("@") ||
                          !email.contains(".")) {
                        return "Please enter a valid Email";
                      }
                      return null;
                    }

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 70, right: 70),
                child: TextFormField(
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
                    border: OutlineInputBorder(borderRadius: BorderRadius.zero),
                  ),
                  validator: (password) {
                    if (password!.isEmpty || password.length < 6) {
                      return "Enter a valid password";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70, right: 70, top: 30),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Confirm your password",
                      labelText: "Confirm password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.zero, right: Radius.zero),
                      )
                  ),
                  validator: (Confirmpassword){
                    if(Confirmpassword!.isEmpty || Confirmpassword.length < 6){
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
                      backgroundColor: Colors.blue[700],
                      foregroundColor: Colors.black,
                      maximumSize: Size(200, 60),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  onPressed: () {
                    var valid = formkey.currentState!.validate();
                    if (valid) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Homepg()));
                    }
                  },
                  child: Text("Register")),
              SizedBox(
                height: 50,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Myfamilylogin()));
                  }, child: Text("Already a user ? Login here",
                style: TextStyle(color: Colors.blue[900]),))
            ],
          ),
        ),
      ),

    );
  }
}
