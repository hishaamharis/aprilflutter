import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: month(),
  ));
}

class month extends StatefulWidget {
  const month({super.key});

  @override
  State<month> createState() => _monthState();
}

class _monthState extends State<month> {
  var month = [
    "january",
    "february",
    "march",
    "april",
    "may",
    "june",
    "july",
    "august",
    "september",
    "october",
    "november",
    "december"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            leading: Text(month[index]),
          ),
        );
      },
      separatorBuilder: (context, index) {
        if (index % 4 == 0) {
          return Card(
            color: Colors.red,
            child: Text("Advertisement"),
          );
        } else {
          return SizedBox();
        }
      },
      itemCount: month.length,
    ));
  }
}
