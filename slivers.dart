import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: SLiver(),
  ));
}

class SLiver extends StatelessWidget {
  var name = ["manu", "jiya", "aslu", "yamal", "george", "cris"];
  var phone = [
    "8397093832",
    "6252671821",
    "9835536292",
    "9765434546",
    "6258571821",
    "6250943821"
  ];
  var image = [
    "assets/image/ronaldo.jpg",
    "assets/image/ronaldo.jpg",
    "assets/image/logbg.jpg",
    "assets/image/ronaldo.jpg",
    "assets/image/logbg.jpg",
    "assets/image/ronaldo.jpg"
  ];

  var color = [Colors.blue,Colors.orange,Colors.blue,Colors.greenAccent,Colors.yellow,Colors.black12];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 150,
            floating: true,
            pinned: true,
            backgroundColor: Colors.blue,
            title: Text("flipy"),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
            ],
            bottom: AppBar(
              backgroundColor: Colors.blue,
              title: Container(
                color: Colors.white,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "search",
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.camera_alt)),
                ),
              ),
            ),
          ),
          SliverList(delegate: SliverChildListDelegate(List.generate(name.length, (index){
            return Card(color: color[index],
              child: ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage(image[index]),),
                title: Text(name[index]),
                subtitle: Text(phone[index]),
              ),
            );
          })))
        ],
      ),
    );
  }
}
