import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'lognpg.dart';
main(){
  runApp(MaterialApp(home: Hmpgeg(),));
}

class Hmpgeg extends StatefulWidget {
  const Hmpgeg({super.key});

  @override
  State<Hmpgeg> createState() => _HmpgegState();
}

class _HmpgegState extends State<Hmpgeg> {
  late SharedPreferences data;
  late String username;
  @override
  void initState(){
    fetchhome();
    super.initState();
  }
  void fetchhome() async{
    data = await SharedPreferences.getInstance();
    setState(() {
      username =data.getString("username")!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 400),
        child: Center(
          child: Column(
            children: [
              Text("HI WELCOME \n    $username"),
              ElevatedButton(onPressed: (){
                data.setBool("newuser", true);
                Navigator.push(context, MaterialPageRoute(builder: (context) => Loginpage()));
              }, child: Text("Log Out",))
            ],
          ),
        ),
      ),
    );
  }
}

