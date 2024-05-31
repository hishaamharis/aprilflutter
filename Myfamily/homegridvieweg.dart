import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Homepg(),));
}

class Homepg extends StatefulWidget {
  @override
  State<Homepg> createState() => _HomeState();
}

class _HomeState extends State<Homepg> {
  var name = [
    "Calender",
    "Groceries",
    "Locations",
    "Activity",
    "ToDo",
    "Settings"
  ];

  var images = [
    "assets/image/Calender.png",
    "assets/image/Grocery.png",
    "assets/image/Location.png",
    "assets/image/activity.png",
    "assets/image/Todo.png",
    "assets/image/setting.png",
  ];

  var data = [
    "March,Wednesday",
    "Broccoli,Apple",
    "Lucy Mao going to Office",
    "Rose favourited your Post",
    "Homework,Design",
    "  "
  ];
  var used = ["3 Events", "4 Items", " ", " ", "4 Items", "2 Items"];

  // var colors = const Color(0xff435543);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff392950),
          automaticallyImplyLeading: false,
        ),
        backgroundColor: const Color(0xff392950),
        body: Column(children: [
          const SizedBox(
            height: 50,
          ),
          Row(
              children: [

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My Family",
                      style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text("Home",
                        style: TextStyle(fontSize: 17, color: Colors.white54))
                  ],
                ),
                SizedBox(
                  width: 240,
                ),
                Container(
                    width: 40,height: 40,
                    child: Icon(Icons.message_sharp),color: Colors.white,),

              ]),
          const SizedBox(
            height: 90,
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: const Color(0xff453657),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                            width: 50,
                            height: 50,
                            child: Image(
                              image: AssetImage(images[index]),fit: BoxFit.fill,
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          name[index],
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          data[index],
                          style: TextStyle(fontSize: 15, color: Colors.white38),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          used[index],
                          style: TextStyle(fontSize: 17, color: Colors.white70),
                        )
                      ],
                    ),
                  ),
                );
              },
              itemCount: name.length,
            ),
          ),
        ]));
  }
}
