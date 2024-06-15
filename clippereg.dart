import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Clippereg(),
  ));
}

class Clippereg extends StatelessWidget {
  const Clippereg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 150,
            width: 150,
            child: ClipRRect(
              clipBehavior: Clip.hardEdge,
                child: Image(image: AssetImage("assets/image/nature.jpeg"))),
          ),
          SizedBox(height: 20,),
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
                child: Image(image: AssetImage("assets/image/newyork.jpg"))),
          ),
          SizedBox(height: 20,),
          Container(
            child: ClipOval(
                child: Image(image: AssetImage("assets/image/london.jpg"))),
          )
        ],
      ),
    );
  }
}
