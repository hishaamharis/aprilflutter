import 'package:aprilflutter/customwidget.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: cstmwdgteg(),
  ));
}

class cstmwdgteg extends StatelessWidget {
  const cstmwdgteg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 150),
        child: Container(
          child: Custmwdgt(
            text: Text("Hello"),
            img: Image(image: AssetImage("assets/image/finland.jpg")),
            clr: Colors.black12,
            onpress: () {},
          ),
        ),
      ),
    );
  }
}
