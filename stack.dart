import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

main() {
  runApp(DevicePreview(builder: (context)=>MaterialApp(debugShowCheckedModeBanner: false,
    useInheritedMediaQuery: true,
    home: Stackeg(),)));
}

class Stackeg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.red,
            height: double.infinity,
            width: double.infinity,
          ),
          Positioned(
            child: Container(
              color: Colors.green,
            ),
            height: 100,
            width: 100,
            left:   150,
            top: 150,
          ),
          Positioned(
            child: Container(
              color: Colors.blue,
            ),
            height: 100,
            width: 100,
            right: 100,
            top: 150,
          ),
          Positioned(
            child: Container(
              color: Colors.white,
            ),
            height: 100,
            width: 400,
            right: 50,

            top: 400,
          ),
        ],
      ),
    );
  }
}
