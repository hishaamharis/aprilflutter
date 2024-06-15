import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Tabbareg2(),
  ));
}

class Tabbareg2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.green,
          title: Text("GeeksForGeeks",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),),
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
              unselectedLabelColor: Colors.white60,
              tabs: [
            Tab(
              icon: Icon(Icons.home_filled),text: "Home",
            ),
            Tab(icon: Icon(Icons.account_box_outlined),text: "Account",),
            Tab(icon: Icon(Icons.alarm),text: "Alarm",),
            Tab(icon: Icon(Icons.home_filled),text: "Home",),
            Tab(icon: Icon(Icons.account_box_outlined),text: "Account",),
            Tab(icon: Icon(Icons.alarm),text: "Alarm",),

          ]),
        ),
        body: TabBarView(children: [
          Icon(Icons.home_filled),
          Icon(Icons.account_box_outlined),
          Icon(Icons.alarm),
          Icon(Icons.home_filled),
          Icon(Icons.account_box_outlined),
          Icon(Icons.alarm),


        ]),

      ),
    );
  }
}
