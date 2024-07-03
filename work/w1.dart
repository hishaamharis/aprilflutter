import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homeappeg(),
  ));
}

class Homeappeg extends StatefulWidget {
  const Homeappeg({super.key});

  @override
  State<Homeappeg> createState() => _HomeappegState();
}

class _HomeappegState extends State<Homeappeg> {
  var spacename = [
    "Living Room",
    "Bed Room",
    "Guest Room",
    "Kitchen",
    "Kids Room",
    "Balcony"
  ];
  var access = [
    "3 family members have access",
    "3 family members have access",
    "2 family members have access",
    "2 family members have access",
    "1 family members have access",
    "4 family members have access"
  ];
  var devices = [
    "4 Devices",
    "5 Devices",
    "3 Devices",
    "4 Devices",
    "4 Devices",
    "2 Devices"
  ];

  var icons = [
    Icons.toggle_on,
    Icons.toggle_on,
    Icons.toggle_off,
    Icons.toggle_on,
    Icons.toggle_on,
    Icons.toggle_on
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFF7400),
        body: SingleChildScrollView(
          child: Container(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50,left: 20,right: 20),
                  child: Container(
                    height: 40,
                    width: 40,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(200),
                      child: Image(
                        image: AssetImage("assets/image/ronaldo.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
                  child: Text(
                    "Hi Samuel",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10,left: 20,right: 20),
                  child: Text(
                    "Welcome to Home",
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
                SizedBox(height: 10,),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    children: List.generate(spacename.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: Card(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Column(
                              children: [
                                Text(
                                  spacename[index],
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 20),
                                  child: Text(
                                    access[index],
                                    style: TextStyle(color: Colors.black38),
                                  ),
                                ),
                                SizedBox(
                                  height: 3.5,
                                ),
                                Text(
                                  devices[index],
                                  style: TextStyle(color: Colors.deepOrange),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Icon(
                                  icons[index],
                                  size: 32,
                                  color: Colors.orange,
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
