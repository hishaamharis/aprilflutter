import 'package:aprilflutter/gridviewwithextent.dart';
import 'package:aprilflutter/listseperated.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Tabbareg(),
  ));
}

class Tabbareg extends StatelessWidget {
  const Tabbareg({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar Eg"),
          bottom: TabBar(
              dividerColor: Colors.cyan,
              indicatorColor: Colors.green,
              unselectedLabelColor: Colors.red,
              tabs: [
                Tab(
                  text: "Status",
                ),
                Tab(
                  text: "Chat",
                ),
                Tab(
                  text: "Contact",
                )
              ]),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("Camera",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)),
            listseperated(),
            gridvieweg2(),
            listseperated()
          ],
        ),
      ),
    );
  }
}
