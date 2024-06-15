import 'package:flutter/material.dart';
main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Checkedboxingeg(),));
}

class Checkedboxingeg extends StatefulWidget {
  @override
  State<Checkedboxingeg> createState() => _CheckedboxingegState();
}

class _CheckedboxingegState extends State<Checkedboxingeg> {
  bool ischecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Checkbox(
          checkColor: Colors.red,
            value: ischecked,
            onChanged: (bool? value) {
              setState(() {
                ischecked = value!;
              });
            }),
      ),
    );
  }
}
