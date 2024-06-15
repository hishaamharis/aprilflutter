import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: flexible(),
  ));
}

class flexible extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Flexible(
                flex: 1,
                child: Container(
                  color: Colors.red,
                )),
            Flexible(
                flex: 2,
                child: Container(
                  color: Colors.yellowAccent,
                )),
            Flexible(
                flex: 2,
                child: Container(
                  color: Colors.blue,
                ))
          ],
        ),
      ),
    );
  }
}
