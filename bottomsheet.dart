import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Bottomsheeteg(),
  ));
}

class Bottomsheeteg extends StatelessWidget {
  const Bottomsheeteg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blueGrey,
        title: Text("Bottom sheet"),

        actions: [
          PopupMenuButton(itemBuilder: (context){
            return[
          PopupMenuItem(child: Text("Invite ")),
          PopupMenuItem(child: Text("New Group ")),
          PopupMenuItem(child: Text("New Broadcast ")),
          PopupMenuItem(child: Text("Logout ")),
            ];
    },
          )
        ],
      ),
      body: Container(
        child: Center(
          child: GestureDetector(
            onTap: ()=>show(context),
            child: Text("bottom sheet"),
          ),
        ),
      ),
    );
  }
}

show(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (context) {
        return ListView(
          children: [
            ListTile(
              leading: Icon(Icons.share),
              title: Text("Share"),
            ),
            ListTile(
              leading: Icon(Icons.facebook),
              title: Text("Facebook"),
            ),
            ListTile(
              leading: Icon(FontAwesomeIcons.whatsapp),
              title: Text("Whatsapp"),
            ),
          ],
        );
      });
}
