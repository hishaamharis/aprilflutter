import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Hotelhomepg(),
  ));
}

class Hotelhomepg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        leading: Icon(Icons.menu),
        title: Center(
            child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            "Type Your Location",
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 20, color: Colors.green),
          ),
        )),
        actions: [Icon(Icons.favorite_border)],
        bottom: AppBar(
          backgroundColor: Colors.blue[200],
          title: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search for something",
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(
                    Icons.camera_alt,
                    color: Colors.black,
                  )),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 35, left: 30),
              child: Row(
                children: [
                  Container(
                    color: Colors.red,
                    height: 100,
                    width: 100,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 14),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.hotel),
                          Text(
                            "Hotel",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Container(
                      color: Colors.blue,
                      height: 100,
                      width: 100,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 14,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.restaurant),
                            Text(
                              "Restaurant",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Container(
                      color: Colors.orange[600],
                      height: 100,
                      width: 100,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 14),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.local_cafe),
                            Text(
                              "Cafe",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Card(
              margin: const EdgeInsets.all(3.0),
              child: Stack(
                children: [
                  Image(
                    image: AssetImage("assets/image/hotel1.JPG"),
                    fit: BoxFit.fill,
                    width: 420,
                    height: 200,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 150,left: 350),
                    child: Container(height: 25,width: 40,
                      child: Center(child: Text("\$40")),
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 220,left: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "Awesome Room near Buoddha",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
        
                          ),
                        ),
                        SizedBox(height: 1),
                        Padding(
                          padding: const EdgeInsets.only(left: 190),
                          child: Text("Bouddha,kathamandu"),
                        ),
                        SizedBox(height: 0),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            children: [
                              Icon(Icons.star, color: Colors.green, size: 16),
                              Icon(Icons.star, color: Colors.green, size: 16),
                              Icon(Icons.star, color: Colors.green, size: 16),
                              Icon(Icons.star, color: Colors.green, size: 16),
                              Icon(Icons.star_half, color: Colors.green, size: 16),
                              SizedBox(width: 4),
                              Text('(220 reviews)'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              margin: const EdgeInsets.all(3.0),
              child: Stack(
                children: [
                  Image(
                    image: AssetImage("assets/image/hotel3.JPG"),
                    fit: BoxFit.fill,
                    width: 420,
                    height: 200,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 150,left: 350),
                    child: Container(height: 25,width: 40,
                      child: Center(child: Text("\$90")),
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 220,left: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "Rooms near Pokhara",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
        
                          ),
                        ),
                        SizedBox(height: 1),
                        Padding(
                          padding: const EdgeInsets.only(left: 160),
                          child: Text("Pokhara,Central Nepal"),
                        ),
                        SizedBox(height: 0),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            children: [
                              Icon(Icons.star, color: Colors.green, size: 16),
                              Icon(Icons.star, color: Colors.green, size: 16),
                              Icon(Icons.star, color: Colors.green, size: 16),
                              Icon(Icons.star, color: Colors.green, size: 16),
                              Icon(Icons.star_border, color: Colors.green, size: 16),
                              SizedBox(width: 4),
                              Text('(500 reviews)'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              margin: const EdgeInsets.all(3.0),
              child: Stack(
                children: [
                  Image(
                    image: AssetImage("assets/image/hotel4.webp"),
                    fit: BoxFit.fill,
                    width: 420,
                    height: 200,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 150,left: 350),
                    child: Container(height: 25,width: 40,
                      child: Center(child: Text("\$140")),
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 220,left: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "Luxury Room near Kathmandu",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),

                          ),
                        ),
                        SizedBox(height: 1),
                        Padding(
                          padding: const EdgeInsets.only(left: 220),
                          child: Text("Kathamandu"),
                        ),
                        SizedBox(height: 0),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            children: [
                              Icon(Icons.star, color: Colors.green, size: 16),
                              Icon(Icons.star, color: Colors.green, size: 16),
                              Icon(Icons.star, color: Colors.green, size: 16),
                              Icon(Icons.star, color: Colors.green, size: 16),
                              Icon(Icons.star, color: Colors.green, size: 16),
                              SizedBox(width: 4),
                              Text("(1150 reviews)"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
