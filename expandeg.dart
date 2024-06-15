import 'package:flutter/material.dart';
main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Expandeg(),));
}

class Expandeg extends StatelessWidget {
  const Expandeg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(color: Colors.red,height: double.infinity,width: 100,),
          Expanded(child: Container(color: Colors.yellowAccent,height: double.infinity,width:100,)),
          Expanded(child: Container(color: Colors.blueGrey,height: double.infinity,width: 100,))

        ],
      ),
    );
  }
}
