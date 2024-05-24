import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homepage(),
  ));
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.red[50],
        title: Center(child: Text("Contacts",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
        ),
      ),
      body: ListView(
        children: [
          Card(
            color: Colors.blue[100],
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/image/ronaldo.jpg"),
              ),
              title: Text("Hisham"),
              subtitle: Text("813898042232"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(
            color: Colors.blue[100],
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/image/logbg.jpg")),
              title: Text("sasi"),
              subtitle: Text("813898675673"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(
            color: Colors.blue[100],
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/image/logbg.jpg")),
              title: Text("jiya"),
              subtitle: Text("812398765673"),
              trailing: Icon(Icons.call),
            ),
          ),
        ],
      ),
    );
  }
}
