import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Cities(),
  ));
}

class Cities extends StatefulWidget {
  const Cities({super.key});

  @override
  State<Cities> createState() => _CitiesState();
}

class _CitiesState extends State<Cities> {
  var cityname = ["Delhi", "Finland", "London", "Vancouver", "New york"];
  var countryname = ["India", "Europe", "UK", "Canada", "USA"];
  var population = [
    "Population : 32.9 mill",
    "Population : 5.54 mill",
    "Population : 8.8 mill",
    "Population : 2.6 mill",
    "Population : 8.34 mill"
  ];
  var image = [
    "assets/image/delhi.jpg",
    "assets/image/finland.jpg",
    "assets/image/london.jpg",
    "assets/image/vancouver.jpg",
    "assets/image/newyork.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          "Cities Around The World",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(itemCount: cityname.length,
          itemBuilder: (context, index) {

        return Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 15, right: 5, left: 5),
                child: Container(
                  height: 150,
                  width: 500,
                  decoration: BoxDecoration(color: Colors.orange),
                  child: ListTile(
                    leading: Image(
                      image: AssetImage(image[index]),
                      width: 100,
                      fit: BoxFit.fill,
                    ),
                    title: Text(
                      cityname[index],
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    subtitle: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: countryname[index],
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600)),
                          TextSpan(text: "\n"),
                          TextSpan(text: population[index])
                        ],
                      ),
                    ),
                  ),
                )),
          ],
        );
      }
    ),
    );
  }
}
