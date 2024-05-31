import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Staggeredgrid(),
  ));
}

class Staggeredgrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xffA4A6A2),
      appBar: AppBar(centerTitle: false,
        backgroundColor: Colors.indigoAccent[700],
        title: Text("StaggeredRecyclerView",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          children: [
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Card(
                color: Colors.white,
                child: Column(
                  children: [Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Image(image: AssetImage("assets/image/HavasuFall.jpg",),fit: BoxFit.fill,height: 210,width: 235,),
                  ), Text("Havasu Falls",style: TextStyle(fontWeight: FontWeight.bold),)],
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 3,
              child: Card(
                color: Colors.white,
                child: Column(
                  children: [Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Image(image: AssetImage("assets/image/Trondheim.jpeg"),width: 235,height: 330,fit: BoxFit.fill,),
                  ), Text("Trondheim",style: TextStyle(fontWeight: FontWeight.bold),)],
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 3,
              child: Card(
                color: Colors.white,
                child: Column(
                  children: [Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Image(image: AssetImage("assets/image/portugal.jpg"),width:235,height: 330,fit: BoxFit.fill,),
                  ), Text("Portugal",style: TextStyle(fontWeight: FontWeight.bold),)],
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Card(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Image(image: AssetImage("assets/image/rocy mountain.jpeg"),height: 210,width: 235,fit: BoxFit.fill,),
                    ),
                    Text("Rocky Mountain National Park",style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 3,
              child: Card(
                color: Colors.white,
                child: Column(
                  children: [Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Image(image: AssetImage("assets/image/nature.jpeg"),height: 330,width:235,fit: BoxFit.fill,),
                  ),
                  Text("Nature",style: TextStyle(fontWeight: FontWeight.bold),)],
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Card(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Image(image: AssetImage("assets/image/beach.webp"),fit: BoxFit.fill,width: 235,height: 210,),
                    ),
                    Text("Beach",style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
