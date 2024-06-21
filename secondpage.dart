import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FoodPage(),
  ));
}

class FoodPage extends StatelessWidget {
  var clr = [
    Colors.red[300],
    Colors.greenAccent[200],
    Colors.brown[300],
    Colors.brown,

  ];

  var images = [
    "assets/image/breakfast.jpg",
    "assets/image/lunch.jpg",
    "assets/image/breakfast.jpg",
    "assets/image/lunch.jpg",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              height: 18,
              width: 18,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Icon(
                Icons.arrow_back,
                color: Colors.grey,
              )),
        ),
        actions: [
          Padding(
            padding:
            const EdgeInsets.only(top: 8, bottom: 7, left: 5, right: 5),
            child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(
                  Icons.favorite_outlined,
                  color: Colors.grey,
                )),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Stack(

        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          Container(
            height: 475,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blueGrey[50],
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          Container(
            height: 350,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.brown[400],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 130, left: 70, right: 70, bottom: 40),
              child: Image(image: AssetImage("assets/image/lunch.jpg")),
            ),
          ),
          Positioned(
            child: Text(
              "Lunch Food",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 23,
              ),
            ),
            top: 370,
            left: 20,
          ),
          Positioned(
            child: Text(
              "Rs:600",
              style: TextStyle(
                  color: Colors.orangeAccent,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            top: 400,
            left: 20,
          ),
          Positioned(
            child: Icon(
              Icons.favorite_outlined,
              color: Colors.red.shade900,
              size: 23,
            ),
            top: 370,
            right: 20,
          ),
          Positioned(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 20,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.pink.shade50,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      "Tea",
                      style: TextStyle(
                        color: Colors.pink.shade500,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 20,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent[100],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      "Fresh Lime",
                      style: TextStyle(
                        color: Colors.orangeAccent.shade400,
                        fontSize: 9,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 20,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      "Juice",
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            top: 440,
            left: 20,
          ),
          Positioned(
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.orangeAccent,
                  size: 18,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orangeAccent,
                  size: 18,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orangeAccent,
                  size: 18,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orangeAccent,
                  size: 18,
                ),
                Icon(
                  Icons.star_half_sharp,
                  color: Colors.orangeAccent,
                  size: 18,
                ),
              ],
            ),
            top: 440,
            right: 20,
          ),
          Positioned(
            child: Row(
              children: [
                Container(
                  height: 35,
                  width: 110,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Center(
                    child: Text(
                      "Food",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 35,
                  width: 110,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[50],
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Center(
                    child: Text(
                      " Your Orders",
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 35,
                  width: 110,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[50],
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Center(
                    child: Text(
                      "Drinks",
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                  ),
                ),
              ],
            ),
            top: 505,
            left: 20,
          ),
          Positioned(
            child: Text(
              "Food Information",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            top: 560,
            left: 20,
          ),
          Positioned(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Making a stir-fry with ingredients you already have is an\n "
                    "easy way to put a healthy meal on the table fast."
                    " \n Stir-fries typically consist of protein, non-starchy veggies,\n ",
                style: TextStyle(
                    color: Colors.black, fontSize: 15, wordSpacing: 0.5),
              ),
            ),
            top: 590,
            left: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(top:570),
            child: Expanded(
              child: GridView.count(
                scrollDirection: Axis.vertical,
                shrinkWrap: false,
                crossAxisCount: 4,
                children: List.generate(clr.length, (index){
                  return Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    color: clr[index],
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image(image: AssetImage(images[index])),
                    ),
                  );
                }),),
            ),
          ),

          Column(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: Colors.black,blurRadius: 50,)],

                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white

                ),
                child: Row(
                  children: [
                    Icon(Icons.add_circle_outline,size: 45,color: Colors.grey[700],),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15,bottom: 10),
                          child: Container(
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color:Colors.black)
                              ),
                              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  Icon(Icons.add,),
                                  Icon(Icons.remove)
                                ],
                              )
                          ),
                        ),
                      ],
                    ),
                    Icon(Icons.remove_circle_outline_sharp,size: 45,color: Colors.grey[700],),
                    SizedBox(width: 115,),
                    ElevatedButton(onPressed: (){}, child: Text("Add to bag",style: TextStyle(
                      color: Colors.white,fontWeight: FontWeight.bold,

                    ),),
                      style: ElevatedButton.styleFrom(
                          minimumSize:Size(120, 45) ,
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20), )),)
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}