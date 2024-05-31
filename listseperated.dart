import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: listseperated(),
  ));
}

class listseperated extends StatefulWidget {
  const listseperated({super.key});

  @override
  State<listseperated> createState() => _listseperatedState();
}

class _listseperatedState extends State<listseperated> {
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
      appBar: AppBar(
        title: Text(""),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Card(
              color: color[index],
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
          separatorBuilder: (context, index) {
           // return Divider(thickness: 5, color: Colors.yellow,);
            if(index%3 ==0){
              return const Card(
                child: Text("heheh"),
              );
            }
            else{
              return SizedBox();
            }

          },
          itemCount: name.length),
    );
  }
}
