import 'dart:async';

import 'package:aprilflutter/Myfamily/loginpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Myfamily(),
  ));
}

class Myfamily extends StatefulWidget {

  @override
  State<Myfamily> createState() => _MyfamilyState();
}

class _MyfamilyState extends State<Myfamily> {
  void initState(){
    Timer((Duration(seconds: 10)),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Myfamilylogin()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff51448D),
      body: Container(height: 900,width: 500,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/image/circlesbg.jpg"),fit: BoxFit.fill,)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Icon(Icons.family_restroom,size: 50,),
              Center(child: Text("MyFamily",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),))
          ]),
      ));
  }
}
