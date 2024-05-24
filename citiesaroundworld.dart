import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Citiesaroundworld(),
  ));
}

class Citiesaroundworld extends StatelessWidget {
  var cityname = ["Delhi", "Finland", "London", "Vancouver", "New york"];
  var countryname = ["India", "Europe", "UK", "Canada", "USA"];
  var population = ["Population : 32.9 mill",
    "Population : 5.54 mill",
    "Population : 8.8 mill",
    "Population : 2.6 mill",
    "Population : 8.34 mill"];
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
        backgroundColor: Colors.deepOrangeAccent,
        title: Center(child: Text("Cities Around World",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: Colors.white),)),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Card(
                  color: Colors.orangeAccent,
                  child: ListTile(
                      leading: Image(
                        image: AssetImage(image[index]),
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                      title: Text(
                        cityname[index],
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                      ),
                      subtitle: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(text: countryname[index],style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600)),
                              TextSpan(text: "\n"),
                              TextSpan(text: population[index])
                            ],
                          ),
                      ),
                  ),
                ),
              ),
            );
          },
          itemCount: cityname.length),
    );
  }
}
