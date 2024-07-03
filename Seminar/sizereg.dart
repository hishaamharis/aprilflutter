import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
      home: MyApp()));}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
            home: Scaffold(
                appBar: AppBar(title: Text('Sizer Example')),
                body: Center(
                  child: Container(
                    width: 50.w,
                    height: 50.h,// 50% of screen width height: 20.h, // 20% of screen height
                    color: Colors. blue,
                    child: Center (child: Text( 'Responsive Box',
                        style: TextStyle(

                            fontSize: 12.sp))),


                  ),
                )));
      },
    );

  }}