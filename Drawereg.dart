import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Drawereg(),
  ));
}

class Drawereg extends StatelessWidget {
  const Drawereg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Hisham"),
              accountEmail: Text("hisham@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/image/ronaldo.jpg"),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/image/ronaldo.jpg"),
                )
              ],
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/image/nature.jpeg"),
                      fit: BoxFit.fill)),
            ),
            ListTile(
              leading: Icon(Icons.home_filled),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.upload),
              title: Text("Upload"),
            ),
            ListTile(
              leading: Icon(Icons.offline_bolt),
              title: Text("Offline"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
            )
          ],
        ),
      ),
      body: Center(child: Text("Welcome",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,),)),
    );
  }
}
