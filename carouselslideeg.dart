import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: carouselslidereg(),
  ));
}

class carouselslidereg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CarouselSlider(
          items: [
            Image(image: AssetImage("assets/image/nature.jpeg")),
            Image(image: AssetImage("assets/image/newyork.jpg")),
            Image(image: AssetImage("assets/image/ronaldo.jpg")),
            Image(image: AssetImage("assets/image/Trondheim.jpeg"))
          ],
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
    );
  }
}
