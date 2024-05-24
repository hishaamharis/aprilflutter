import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: listviewbuilder(),
  ));
}

class listviewbuilder extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blue[100],
      appBar: AppBar(backgroundColor: Colors.blue,
        title: Text("Contacts",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(image[index]),
              ),
              title: Text(name[index]),
              subtitle: Text(phone[index]),
              trailing: Icon(Icons.call),
            ),
          );
        },
        itemCount: name.length,
      ),
    );
  }
}
