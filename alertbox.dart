import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Alertboxeg(),
  ));
}

class Alertboxeg extends StatelessWidget {
  const Alertboxeg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.green[100],
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Exit!!!"),
                        content: Text("Do you want to Exit!"),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("Yes")),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("No")),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("Cancel"))
                        ],
                      );
                    });
              },
              child: Text("Button"))),
    );
  }
}
