import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Bedroomeg(),
  ));
}

class Bedroomeg extends StatefulWidget {
  const Bedroomeg({super.key});

  @override
  State<Bedroomeg> createState() => _BedroomegState();
}

class _BedroomegState extends State<Bedroomeg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white70,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.deepOrange,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 70, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white70,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 5),
                      child: Row(
                        children: [
                          Text(
                            "Bed Room",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 190),
                            child: Icon(
                              CupertinoIcons.settings,
                              color: Colors.white70,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        "3 family members have access",
                        style: TextStyle(color: Colors.white54),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.deepOrange[300],
                            backgroundImage:
                                AssetImage("assets/image/temperature.jpg"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              children: [
                                Text(
                                  "24°C",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Colors.white70),
                                ),
                                Text(
                                  "TEMP",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white70),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 90),
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage("assets/image/humdty.jpg"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              children: [
                                Text(
                                  "50%",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Colors.white70),
                                ),
                                Text(
                                  "HUMIDITY",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white70),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(height: 70,width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: ListTile(
                leading: Image.asset("assets/image/Lamp-icon.png",scale: 4,color: Colors.orange,),
                title: Text("Lamp",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black),),
                subtitle: Text("65% Brightness",style: TextStyle(fontSize: 12,color: Colors.black38),),
                trailing: Icon(Icons.toggle_on,color: Colors.deepOrange,size: 30,),
              )
            ),
            SizedBox(height: 25,),
            Container(height: 70,width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: Colors.white),
                child: ListTile(
                  leading: Image.asset("assets/image/tv2.png",scale: 4,),
                  title: Text("TV",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black),),
                  subtitle: Text("37% Volume",style: TextStyle(fontSize: 12,color: Colors.black38),),
                  trailing: Icon(Icons.toggle_off,color: Colors.grey,size: 30,),
                )
            ),
            SizedBox(height: 25,),
            Container(height: 70,width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: Colors.white),
                child: ListTile(
                  leading: Image.asset("assets/image/ac3.jpg",scale: 4,),
                  title: Text("Air Conditioner",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black),),
                  subtitle: Text("24°C Temperature",style: TextStyle(fontSize: 12,color: Colors.black38),),
                  trailing: Icon(Icons.toggle_on,color: Colors.deepOrange,size: 30,),
                )
            ),
            SizedBox(height: 25,),
            Container(height: 70,width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: Colors.white),
                child: ListTile(
                  leading: Image.asset("assets/image/fridge2.png",scale: 4,),
                  title: Text("Fridge",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black),),
                  subtitle: Text("5°C Temperature",style: TextStyle(fontSize: 12,color: Colors.black38),),
                  trailing: Icon(Icons.toggle_on,color: Colors.deepOrange,size: 30,),
                )
            ),
            SizedBox(height: 25,),
            Container(height: 70,width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: Colors.white),
                child: ListTile(
                  leading: Image.asset("assets/image/cctv2.png",scale: 4,),
                  title: Text("CCTV Cam.",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black),),
                  subtitle: Text("Left/Right : 96.4° & Up/Down : 86.2°",style: TextStyle(fontSize: 12,color: Colors.black38),),
                  trailing: Icon(Icons.toggle_off,color: Colors.grey,size: 30,),
                )
            ),
        
          ],
        ),
      ),
    );
  }
}
