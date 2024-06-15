import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Backpresseg(),
  ));
}

class Backpresseg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<bool> showdialogpop() async {
      return await showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Exit"),
              content: Text("Do you want to Exit"),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    child: Text("Yes")),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: Text("No")),
              ],
            );
          });
    }

    return WillPopScope(
        onWillPop: showdialogpop,
        child: Scaffold(
          body: Center(child: Text("Welcome to flutter")),
        ));
  }
}
