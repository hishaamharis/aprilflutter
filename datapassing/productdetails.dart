import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'dummydata.dart';

class productdetails extends StatefulWidget {
  const productdetails({super.key});

  @override
  State<productdetails> createState() => _productdetailsState();
}

class _productdetailsState extends State<productdetails> {
  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments;
    final data = dummyproducts.firstWhere((product)=>product["id"] == id);
    return  Scaffold(
    body:   ListView(
      children: [
        SizedBox(
          height: 100,
          width: 100,
          child: Image(image: AssetImage(data["Image"])),
        ),
        Wrap(
          children: [
            Text(data["name"]),
            Text(data["Prize"])
          ],
        ),
        Text(data["rating"]),
        Text(data["description"]),
      ],
    )
    );
  }
}
