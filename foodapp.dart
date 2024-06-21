import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: N_home(),
    debugShowCheckedModeBanner: false,
  ));
}

class N_home extends StatelessWidget {
  const N_home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Find Your Best",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Nutrition Meal",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Container(
                decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(25)),
                height: 40,
                child: Image(
                    image: AssetImage(
                      "assets/image/profile.JPG",
                    )))
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              height: 50,
              width: 380,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search foods",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryCards(
                      text: 'BAKERY',
                      bgColor: Color(0xfffde7ea),
                      icon: "assets/image/donut.jpg"),
                  CategoryCards(
                      text: 'DIARY',
                      bgColor: Color(0xffeef5f5),
                      icon: "assets/image/diary.jpg"),
                  CategoryCards(
                      text: 'SEAFOOD',
                      bgColor: Color(0xfff9f0d9),
                      icon: "assets/image/seafood.png"),
                  CategoryCards(
                      text: 'SNACKS',
                      bgColor: Color(0xfffdd7d0),
                      icon: "assets/image/snacks.jpg"),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    CardButton(
                      containerImage: 'assets/image/breakfast.jpg',
                      text: 'Morning Breakfast',
                      price: '75.00',
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    CardButton(
                      containerImage: 'assets/image/lunch.jpg',
                      text: 'Lunch',
                      price: '100.00',
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    CardButton(
                      containerImage: 'assets/image/breakfast.jpg',
                      text: 'Snacks',
                      price: '75.00',
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    CardButton(
                      containerImage: 'assets/image/lunch.jpg',
                      text: 'Dinner',
                      price: '100.00',
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class CategoryCards extends StatelessWidget {
  final String text;
  final Color bgColor;
  final String icon;

  const CategoryCards(
      {super.key,
        required this.text,
        required this.bgColor,
        required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: bgColor, borderRadius: BorderRadius.circular(15)),
          height: 100,
          width: 80,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image(
              image: AssetImage(icon),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text,
          style:
          TextStyle(fontWeight: FontWeight.bold, color: Color(0xff5c5f5b)),
        )
      ],
    );
  }
}

class CardButton extends StatelessWidget {
  final String containerImage;
  final String text;
  final String price;

  const CardButton(
      {super.key,
        required this.containerImage,
        required this.text,
        required this.price});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 400,
          color: Colors.white,
        ),
        Container(
          decoration: BoxDecoration(
              color: Color(0xffBCD3BE),
              borderRadius: BorderRadius.circular(20)),
          height: 300,
          width: 250,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image(
                image: AssetImage("assets/images/donut.png"),
              ),
            ),
          ),
        ),
        Positioned(
            left: 25,
            top: 200,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              height: 125,
              width: 200,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "\$${price}",
                      style: TextStyle(color: Colors.orangeAccent),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 20,
                        ),
                        Icon(
                          Icons.star_border,
                          color: Colors.orange,
                          size: 20,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )),
      ],
    );
  }
}