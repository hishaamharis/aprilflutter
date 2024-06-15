import 'package:flutter/material.dart';
main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Expandedtileeg(),
  ));
}

class Expandedtileeg extends StatelessWidget {
  const Expandedtileeg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ExpansionTile(title: Text("Colors"),
          children: [
            ListTile(leading: CircleAvatar(backgroundColor: Colors.red,),),
            ListTile(leading: CircleAvatar(backgroundColor: Colors.blue,),),
            ListTile(leading: CircleAvatar(backgroundColor: Colors.yellow,),),
          ],),
          ExpansionTile(title: Text("Vegetables"),
          children: [
            ListTile(leading: CircleAvatar(backgroundColor: Colors.red,),),
            ListTile(leading: CircleAvatar(backgroundColor: Colors.blue,),),
            ListTile(leading: CircleAvatar(backgroundColor: Colors.yellow,),),

          ],),

        ],
      ),

    );
  }
}
