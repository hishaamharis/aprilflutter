import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Sampleui(),
  ));
}

class Sampleui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.red, Colors.yellow, Colors.blue],
            begin: Alignment.bottomRight,
            end: Alignment.bottomLeft),),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.facebook,size: 100,color: Colors.blue[800],
            ),
            Text("Facebook",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.blue[900],),),
          ],
        ),
      ),
    );
  }
}
