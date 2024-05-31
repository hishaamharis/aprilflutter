import 'package:flutter/material.dart';
main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: gridvieweg2(),
  ));
}

class gridvieweg2 extends StatelessWidget {
  const gridvieweg2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 150),
      children: [
        Card(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.access_alarm)
            ],
          ),
        ),
        Card(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.access_alarm)
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
              Icon(Icons.ac_unit)
            ],
          ),
        ),
        Card(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.abc)
            ],
          ),
        ),


      ],),
    );
  }
}
