import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../datapassing/mainscreen.dart';
import 'lgpg.dart';

class homepshare extends StatefulWidget {
  const homepshare({super.key});

  @override
  State<homepshare> createState() => _homepshareState();
}

class _homepshareState extends State<homepshare> {
  late SharedPreferences regdata;

  late String name;
  @override
  void initState() {
    name4();

    super.initState();
  }
  void name4()async{
    regdata = await SharedPreferences.getInstance();
    setState(() {
      name =regdata.getString('name')!;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hi $name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue),)
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(child: Mainscreeneg()),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              regdata.setBool("newuser", true);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>loginshare2(),));
            }, child:
            Text("Logout") )
          ],
        ),
      ),
    );
  }
}