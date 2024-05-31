import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: listviewcstm2(),));
}

class listviewcstm2 extends StatelessWidget {
  var name = ["manu","raju","rohit","jabbar"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.blueGrey,
          title: Text("Phone",style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        body: ListView.custom(childrenDelegate: SliverChildListDelegate(List.generate(name.length, (index){
          return Container(height: 100,
            width: 100,
            child: Card(
                color: Colors.blue[200],
                child :ListTile(
                  title : Text(name[index]),

                )

            ),
          );
        })),
        ));
  }
}
