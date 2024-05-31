import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Gridviewcount(),));
}
class Gridviewcount extends StatelessWidget {
  var icons = [
    Icons.car_crash,
    Icons.directions_bike,
    Icons.directions_boat,
    Icons.directions_bus,
    Icons.train,
    Icons.directions_walk,
    Icons.contact_mail,
    Icons.duo,
    Icons.hourglass_bottom,
    Icons.mobile_friendly,
    Icons.message,
    Icons.key,
    Icons.wifi,
    Icons.bluetooth,
    Icons.emoji_emotions

  ];
  var name = ["Car", "Bicycle", "Boat", "Bus", "Train", "Walk","Contact","Duo","Hour","Mobile","Message","Key","Wifi","Bluetooth","Smile"];
  var colors = [
    Colors.green[300],
    Colors.lightBlue[500],
    Colors.lightBlueAccent[200],
    Color(0xff4D503D),
    Colors.brown,
    Colors.green[100],
    Colors.grey,
    Colors.green,
    Colors.pink,
    Colors.indigo[700],
    Colors.brown[500],
    Color(0xffb7b591),
    Colors.blueGrey,
    Color(0xffAE82C0),
    Colors.teal[600]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 4,
      children: List.generate(name.length, (index){
        return Card(
          color: colors[index],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(icons[index]), Text(name[index]),],

          ),
        );
      }
        )

        ),
    );
  }
}
