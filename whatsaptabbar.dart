import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Whatsapp(),));
}

class Whatsapp extends StatelessWidget {
  const Whatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          actions: [Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.more_vert_sharp),
          )],
          backgroundColor: Color(0xff075e55),
          title: Text("Whatsapp",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
          bottom: TabBar(tabs:[ Tab(icon:Icon (Icons.camera_alt),),
          Tab(text: "Chat",),
          Tab(text: "Status",),
          Tab(text: "Call",)],
            indicatorColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            labelColor: Colors.white,
          ),
        ),
        
      ),
    );
  }
}
