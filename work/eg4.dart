import 'package:aprilflutter/work/bedroom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:motion_tab_bar/MotionTabBar.dart';

void main() {
  runApp(MaterialApp(
    home: homeapp(),
    debugShowCheckedModeBanner: false,
  ));
}

class homeapp extends StatefulWidget {
  const homeapp({super.key});

  @override
  State<homeapp> createState() => _homeappState();
}

class _homeappState extends State<homeapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent[700],
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 30,right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: const Image(
                          image: AssetImage("assets/image/ronaldo.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Hi Samuel",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      "Welcome To Home",
                      style: TextStyle(fontSize: 15, color: Colors.black26,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    StaggeredGrid.count(
                      crossAxisSpacing: 20,
                      crossAxisCount: 2,
                      children: [
                        StaggeredGridTile.count(
                            crossAxisCellCount: 1,
                            mainAxisCellCount: 1,
                            child: classforhome(
                              strmain: 'Living Room', strsub: '4 Family Members', numdevice: '4', straccess: 'Full access', icn: Icons.toggle_on,
                            )),
                        StaggeredGridTile.count(
                            crossAxisCellCount: 1,
                            mainAxisCellCount: 1,
                            child: GestureDetector(onTap: (){
                              Navigator.push(context,MaterialPageRoute(
                                builder: (context) => Bedroomeg(),
                              ),);
                            },
                              child: classforhome(
                                strmain: 'Bed Room', strsub: '3 Family Members', numdevice: '5', straccess: 'Full access', icn: Icons.toggle_on,
                              ),
                            )),
                        StaggeredGridTile.count(
                            crossAxisCellCount: 1,
                            mainAxisCellCount: 1,
                            child: classforhome(
                              strmain: 'Guest Room', strsub: '3 Family Members', numdevice: '3', straccess: 'Full access', icn: Icons.toggle_off,
                            )),
                        StaggeredGridTile.count(
                            crossAxisCellCount: 1,
                            mainAxisCellCount: 1,
                            child: classforhome(
                              strmain: 'Kitchen', strsub: '3 Family Members', numdevice: '4', straccess: 'Full access', icn: Icons.toggle_on,
                            )),
                        StaggeredGridTile.count(
                            crossAxisCellCount: 1,
                            mainAxisCellCount: 1,
                            child: classforhome(
                              strmain: 'Kids Room', strsub: '3 Family Members', numdevice: '4', straccess: 'Full access', icn: Icons.toggle_on,
                            )),
                        StaggeredGridTile.count(
                            crossAxisCellCount: 1,
                            mainAxisCellCount: 1,
                            child: classforhome(
                              strmain: 'Balcony',
                              strsub: '3 Family Members',
                              numdevice: '2',
                              straccess: 'Full access', icn: Icons.toggle_off,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 48,),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: MotionTabBar(
                  initialSelectedTab: "Add",
                  useSafeArea: true, // default: true, apply safe area wrapper
                  labels: const ["Home", "Clock", "Add", "Leaderboard","Settings"],
                  icons: const [CupertinoIcons.home, CupertinoIcons.clock, CupertinoIcons.add, Icons.leaderboard,CupertinoIcons.settings],

                  tabSize: 50,
                  tabBarHeight: 50,
                  textStyle: const TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                  tabIconColor: Colors.grey,
                  tabIconSize: 28.0,
                  tabIconSelectedSize: 26.0,
                  tabSelectedColor: Colors.orangeAccent,
                  tabIconSelectedColor: Colors.white,
                  tabBarColor: Colors.white,
                ),
              ),
            ],
          ),

        ),

      ),
    );
  }
}

class classforhome extends StatefulWidget {
  final String strmain;
  final String strsub;
  final String straccess;
  final String numdevice;
  final IconData icn;

  const classforhome(
      {super.key,
        required this.strmain,
        required this.strsub,
        required this.numdevice, required this.straccess, required this.icn});

  @override
  State<classforhome> createState() => _classforhomeState();
}

class _classforhomeState extends State<classforhome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 100,
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 17,left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.strmain,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
              SizedBox(height: 10,),
              Text(widget.strsub,style: TextStyle(color: Colors.black26,fontSize: 15,fontWeight: FontWeight.bold),),
              Text(widget.straccess,style: TextStyle(color: Colors.black26,fontSize: 15,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text("${widget.numdevice} devices",style: TextStyle(color: Colors.orangeAccent,fontSize: 15,fontWeight: FontWeight.bold),),
              SizedBox(height: 2,),
              Icon(widget.icn,color: Colors.orangeAccent,size: 40,)

            ],

          ),
        ),
      ),
    );
  }
}