import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: dismissbleeg(),
  ));
}

class dismissbleeg extends StatelessWidget {
  var name = ["deepu", "manu", "joji", "sasi"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.yellowAccent,
        title: Text("Dismesseble"),
      ),
      body: ListView.builder(itemCount : name.length,itemBuilder: (context, index) {
        return Dismissible(
            key: ValueKey(name),
            background: Container(
              color: Colors.red,
            ),
            secondaryBackground: Container(
              color: Colors.green,
            ),
            child: ListTile(
              title: Center(child: Text(name[index])),
            ));
      }),
    );
  }
}
