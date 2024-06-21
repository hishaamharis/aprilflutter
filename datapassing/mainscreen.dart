import 'package:aprilflutter/datapassing/dummydata.dart';
import 'package:flutter/material.dart';

import 'productdetails.dart';
main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Mainscreeneg(),
    routes: {'productdetails': (context) => productdetails()},
  ));
}

class Mainscreeneg extends StatefulWidget {
  const Mainscreeneg({super.key});

  @override
  State<Mainscreeneg> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreeneg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: dummyproducts.map((product)=>GestureDetector(
          child: Center(
            child: Column(
              children: [
                Image(image: AssetImage("${product['Image']}")),
                Text("${product["name"]}")
              ],
            ),
          ),
          onTap: ()=>getproduct(context,product['id']),
        )).toList(),
      )
    );

  }
  getproduct(BuildContext context,product){
    Navigator.pushNamed(context, 'productdetails',arguments: product);
  }
}
