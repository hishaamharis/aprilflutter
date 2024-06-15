import 'package:aprilflutter/gridextent.dart';
import 'package:aprilflutter/listseperated.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Namedrootseg(),
    routes: {
    'grid' : (context)=>Gridviewcount(),
      'list' : (context)=>listseperated()
    },
  ));
}

class Namedrootseg extends StatelessWidget {
  const Namedrootseg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Wrap(children: [ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, 'list');
          }, child: Text("List")),
          SizedBox(height: 15,),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, 'grid');
            }, child: Text("Grid")),
          ]
          ),
        ),
      ),
    );
  }
}
