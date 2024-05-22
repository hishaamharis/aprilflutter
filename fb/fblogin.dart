import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              Icons.help,
              color: Colors.white,
            )
          ],
        ),
      ),
      body: Container(
        color: Colors.black,
        width: double.infinity,
        child: Column(
          children: [
            const Padding(
                padding: EdgeInsets.only(top: 200, left: 60, right: 60)),
            const Icon(
              Icons.facebook,
              size: 80,
              color: Colors.blue,
            ),
            const Text(
              "Welcome to facebook",
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 70, left: 60, right: 60),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white),
              height: 60,
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Username",
                  hintStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)
                  )
                ),
              ),
            ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40,left: 60,right: 60),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,),
                height: 60,
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
