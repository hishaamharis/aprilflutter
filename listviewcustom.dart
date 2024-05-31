import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(
    DevicePreview(builder: (context)=>MaterialApp(home: lstviewcstm(),
    useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,))
  );
}

class lstviewcstm extends StatelessWidget {
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

  var color = [Colors.blue,Colors.orange,Colors.blue,Colors.greenAccent,Colors.yellow,Colors.black12];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue[100],
        title: Text("Phone",style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context,index){
        return Card(
          color: color[index],
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(image[index]),
            ),
            title: Text(name[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
            subtitle: Text(phone[index]),
            trailing: Icon(Icons.call),
          ),
        );
      },childCount:name.length )),
    );
  }
}
