import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Drawereg2(),
  ));
}

class Drawereg2 extends StatelessWidget {
  const Drawereg2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("NavigationDrawer",style: TextStyle(color: Colors.white),),
      ),
      drawer: Drawer(backgroundColor: Colors.white,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                "Robin Singla",
                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
              ),
              accountEmail: Text("robinsingla@gmail.com",style: TextStyle(color: Colors.black),),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/image/ronaldo.jpg"),
              ),
              decoration: BoxDecoration(color: Colors.white),
            ),

            ListTile(
              leading: Icon(Icons.home_filled),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.message_sharp),
              title: Text("Message"),
            ),
            ListTile(
              leading: Icon(Icons.sync),
              title: Text("Sync"),
            ),
            ListTile(
              leading: Icon(Icons.delete),
              title: Text("Trash"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
            ),
            Divider(),
            Text("Profile",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black26),),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Log Out"),
            ),

            Divider(),
            Text("Communicate",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black26),),
            ListTile(
              leading: Icon(Icons.share),
              title: Text("Share"),
            ),
            ListTile(
              leading: Icon(Icons.rate_review_rounded),
              title: Text("Rate us"),
            ),

          ],
        ),
      ),
    );
  }
}
