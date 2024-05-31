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
            return Column(
              children: [
                Card(margin: EdgeInsets.symmetric(vertical: 20,horizontal: 16),
                  color: Colors.orangeAccent,
                  child: ListTile(
                      title : Row(
                        children: [
                          SizedBox(
                            height: 150,
                            width: 150,

                            child: Image(
                              image: AssetImage(image[index]),
                              fit: BoxFit.fill,


                            ),
                          ),
                          SizedBox(width: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                cityname[index],
                                style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 20,),
                              Text(countryname[index],
                                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                              ),
                              Text(population[index],)
                            ],
                          ),

                        ],
                      ),



                  ),
                ),
              ],
            );
          },
          itemCount: cityname.length),
    );
  }
}
