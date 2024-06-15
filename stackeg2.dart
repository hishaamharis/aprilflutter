import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

main() {
  runApp(DevicePreview(
      builder: (context) => MaterialApp(
            debugShowCheckedModeBanner: false,
            useInheritedMediaQuery: true,
            home: Stackeg2(),
          )));
}

class Stackeg2 extends StatefulWidget {
  @override
  State<Stackeg2> createState() => _Stackeg2State();
}

class _Stackeg2State extends State<Stackeg2> {
  var screen = [
    Text("Home"),
    Text("Favourite"),
    Text("Settings"),
    Text("Notifications")
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      body: Center(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                height: 280,
                width: 550,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blueGrey),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 300, top: 25),
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50, right: 200),
                      child: Text(
                        "Profile",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, right: 140),
                      child: Text(
                        "Edit Your Profile",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.white30),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Stack(
              children: [
                Positioned(
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/image/ronaldo.jpg"),
                    radius: 60,
                  ),
                  top: 200,
                  right: 140,
                ),
                Positioned(
                  child: Text(
                    "Mishal Haneef",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey),
                  ),
                  top: 350,
                  right: 120,
                ),
                Positioned(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue[100]),
                    child: Column(
                      children: [
                       SizedBox(height: 20,
                         child: ListTile(
                           leading: Icon(Icons.person,color: Colors.black87,),
                           title: Text("My Account",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87),),
                         ),
                       ),
                      ],
                    ),
                  ),
                  height: 60,
                  width: 280,
                  top: 400,
                  left: 50,
                ),
                Positioned(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue[100],
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 20,
                          child: ListTile(
                            leading: Icon(Icons.dashboard,color: Colors.black87,),
                            title: Text("Dashboard",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87),),
                          ),
                        ),
                      ],
                    ),
                  ),
                  height: 60,
                  width: 280,
                  top: 490,
                  left: 50,
                ),
                Positioned(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue[100]),
                    child: Column(
                      children: [
                        SizedBox(height: 20,
                          child: ListTile(
                            leading: Icon(Icons.error,color: Colors.black87,),
                            title: Text("About",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87),),
                          ),
                        ),
                      ],
                    ),
                  ),
                  height: 60,
                  width: 280,
                  top: 580,
                  left: 50,
                ),
                Positioned(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue[100]),
                    child: Column(
                      children: [
                        SizedBox(height: 20,
                          child: ListTile(
                            leading: Icon(Icons.logout,color: Colors.black87,),
                            title: Text("Logout",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87),),
                          ),
                        ),
                      ],
                    ),
                  ),
                  height: 60,
                  width: 280,
                  top: 670,
                  left: 50,
                )
              ],
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(currentIndex: index,
        onTap: (tapindex) {
        screen[index];
        setState(){
          index = tapindex;
        }


        },
        backgroundColor: Colors.greenAccent,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black12,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.lightBlue[50]),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.incomplete_circle_outlined),
            label: "Settings",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Account",
          ),
        ],),
    );
  }
}
