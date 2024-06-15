import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Gridviewbuilder(),));
}
class Gridviewbuilder extends StatelessWidget {
  var icons = [
    Icons.access_alarm,
    Icons.ac_unit_outlined,
    Icons.accessible_forward_rounded,
    Icons.account_balance_wallet_sharp,
    Icons.access_alarms_outlined,
    Icons.access_time_filled_outlined
  ];
  var name = ["manu", "jiju", "roshan", "babu", "kumar", "han"];
  var colors = [
    Colors.blue,
    Colors.green,
    Colors.orangeAccent,
    Colors.transparent,
    Colors.blueGrey,
    Colors.yellow
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blue[100],
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 2),
          itemCount: name.length,
          itemBuilder: (context, index) {
            return Card(color: colors[index],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(icons[index]), Text(name[index]),],

              ),
            );
          }),
    );
  }
}
