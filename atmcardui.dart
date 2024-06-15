import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:google_fonts/google_fonts.dart';

main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Atmcardui(),
  ));
}

class Atmcardui extends StatelessWidget {
  const Atmcardui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFF9F9F),
      body: Center(
        child: Container(
          height: 220,
          width: 380,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), ),
          child: Stack(children: [
            Image(image: AssetImage("assets/image/atmbg.png"),width:400,fit: BoxFit.fill,),
            Positioned(
              child: Container(
                child: Image(
                  image: AssetImage("assets/image/csb bank.png"),
                  fit: BoxFit.fill,
                ),
                height: 45,
                width: 120,
              ),
              left: 240,
              top: 10,
            ),
            Positioned(
              child: Image(
                image: AssetImage("assets/image/atmchip.png"),
                height: 70,
                width: 55,
              ),
              top: 46,
              left: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 94, left: 40),
              child: Text(
                "6522 3200 2345 9876",
                style: GoogleFonts.robotoMono(color: Colors.white, fontSize: 27),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 134, left: 125),
              child: Text(
                "Valid\nThru",
                style: TextStyle(fontSize: 10, color: Colors.white38),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 132, left: 158),
              child: Text(
                "08/23",
                style: TextStyle(color: Colors.white70, fontSize: 23),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 168, left: 40),
              child: Text(
                "VINAYAK HEGDE",
                style:
                    GoogleFonts.robotoMono(fontSize: 18, color: Colors.white),
              ),
            ),
            Positioned(
              child: Image(
                image: AssetImage("assets/image/rupay.png"),
                height: 80,
                width: 80,
              ),
              height: 363,
              left: 272,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 68,left: 287),
              child: Image(image: AssetImage("assets/image/upid.png"),height: 30,width: 30,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 68,left: 345),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Transform(transform: Matrix4.rotationZ(math.pi/2),
                  child: Icon(Icons.wifi,color: Colors.white,size: 30,),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 192,left: 295),
              child: Text("PLATINUM",style: GoogleFonts.robotoMono(fontSize: 9,color: Colors.white60,fontStyle: FontStyle.italic),),
            )
          ]),
        ),
      ),
    );
  }
}
