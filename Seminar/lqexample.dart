import 'package:aprilflutter/Seminar/liquicustomprogress.dart';
import 'package:aprilflutter/Seminar/liquidlinear.dart';
import 'package:flutter/material.dart';

import 'liquidprogressindicator.dart';




void main() => runApp(MaterialApp(home: Example()));

class Example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Liquid Progress Indicator Examples"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextButton(
              child: Text("Circular"),
              style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all<Color>(Colors.grey.shade300),
              ),
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => LiquidCircularProgressIndicatorPage(),
                ),
              ),
            ),
            TextButton(
              child: Text("Linear"),
              style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all<Color>(Colors.grey.shade300),
              ),
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => LiquidLinearProgressIndicatorPage(),
                ),
              ),
            ),
            TextButton(
              child: Text("Custom"),
              style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all<Color>(Colors.grey.shade300),
              ),
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => LiquidCustomProgressIndicatorPage(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}