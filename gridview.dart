import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Gridvieweg(),));
}

class Gridvieweg extends StatelessWidget {
  const Gridvieweg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      children: [
        Card(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.ac_unit)
          ],
        ),
      ),
        Card(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.abc_outlined)
            ],
          ),
        ),
        Card(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.abc_rounded)
            ],
          ),
        ),
        Card(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.ac_unit_outlined)
            ],
          ),
        ),
        Card(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.abc_sharp)
            ],
          ),
        ),
        Card(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.ac_unit)
            ],
          ),
        ),
      ],),
    );
  }
}
