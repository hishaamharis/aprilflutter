import 'package:flutter/material.dart';

class Custmwdgt extends StatelessWidget {
  final Text text;
  final Text ?subtitle;
  final Image img;
  final Color clr;
  VoidCallback onpress;
  Custmwdgt({required this.text, required this.img,required this.clr, this.subtitle,required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(color: clr,
        child: ListTile(
          leading: img,
          title: text,
          subtitle: subtitle,
        ),
      ),
    );
  }
}
