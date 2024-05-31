import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: listviewcstm2(),
  ));
}

class listviewcstm2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
          title: Text(
            "Phone",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        body: ListView.custom(
          childrenDelegate: SliverChildListDelegate(List.generate(10, (index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                  color: Colors.green[200],
                  child: ListTile(
                    title: Text(
                      "ram",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "9898039933",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  )),
            );
          })),
        ));
  }
}
