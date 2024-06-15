import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Stackwork(),
  ));
}

class Stackwork extends StatelessWidget {
  const Stackwork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/image/profile.JPG"),
                    radius: 80,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 85),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/image/facebook.png"),
                          radius: 23,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/image/G.png"),
                        radius: 23,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/image/Unknown.png"),
                        radius: 23,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/image/linkedin.png"),
                        radius: 23,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "chromicle",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 3,
                ),
                Text("@amFOSS"),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Mobile App Developer and Open\n           source enthusiastic",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(height: 50,width: 330,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.grey[300]),
                  child: ListTile(
                    leading: Icon(Icons.person_2),
                    title: Text("Privacy"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
                SizedBox(height: 20,),
                Container(height: 50,width: 330,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.grey[300]),
                  child: ListTile(
                    leading: Icon(Icons.history),
                    title: Text("Purchase History"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
                SizedBox(height: 20,),
                Container(height: 50,width: 330,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.grey[300]),
                  child: ListTile(
                    leading: Icon(Icons.help_outline),
                    title: Text("Help & Support"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
                SizedBox(height: 20,),
                Container(height: 50,width: 330,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.grey[300]),
                  child: ListTile(
                    leading: Icon(Icons.settings_outlined),
                    title: Text("Settings"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
                SizedBox(height: 20,),
                Container(height: 50,width: 330,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.grey[300]),
                  child: ListTile(
                    leading: Icon(Icons.person_add_alt),
                    title: Text("Invite A friend"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
          
              ],
            ),
          ),
        ));
  }
}
