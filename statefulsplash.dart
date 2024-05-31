
import 'dart:async';

import 'package:aprilflutter/Loginpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: splash(),
  ));
}

class splash extends StatefulWidget {
  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
 @override
  void initState() {
    super.initState();
    Timer((Duration(seconds: 3)), (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginpage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/image/bgg.jpg"),
              fit: BoxFit.fill),
        ),
        child: Center(
          child: Image(
            image: AssetImage("assets/image/appleicon.png"),
            height: 100,
            width: 100,
          ),
        ),
      ),
    );
  }
}
