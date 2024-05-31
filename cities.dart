import 'package:flutter/material.dart';

main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: cities()));
}

class cities extends StatefulWidget {
  const cities({super.key});

  @override
  State<cities> createState() => _citiesState();
}

class _citiesState extends State<cities> {
  var images = [
    "assets/image/delhi.jpg",
    "assets/image/finland.jpg",
    "assets/image/london.jpg",
    "assets/image/vancouver.jpg",
    "assets/image/newyork.jpg"
  ];

  var cities = ["Delhi", "Finland", "London", "Vancouver", "New York"];

  var country = ["India", "Europe", "UK", "Canada", "USA"];

  var population = [
    "Population: 32.9 mil ",
    "Population: 5.54 mil",
    "Population: 8.8 mil",
    "Population: 2.6 mil",
    "Population: 3.34 mil"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          centerTitle: true,
          title: const Text(
            "Cities Around World",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Card(
                margin:const EdgeInsets.only(top: 20),
                elevation: 5,
                color: Colors.orange,
                child: ListTile(
                  minVerticalPadding: 5,
                  title: Row(children: [
                    Image(
                      width: 200,
                      height: 160,
                      fit: BoxFit.fill,
                      image: AssetImage(images[index]),
                    ),
                    const SizedBox(width: 30,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(),
                          child: Text.rich(
                              textAlign: TextAlign.left,
                              TextSpan(
                                text: (cities[index]),
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 28),
                              )),
                        ),
                        SizedBox(height: 17,),
                        Padding(
                          padding: const EdgeInsets.only(),
                          child: Text.rich(
                              textAlign: TextAlign.left,
                              TextSpan(
                                text: country[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 22),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text.rich(TextSpan(
                            text: population[index],
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          )),
                        )
                      ],
                    ),
                  ]),
                ),
                // subtitle:
              );
            },
            itemCount: cities.length,
          ),
        ));
  }
}