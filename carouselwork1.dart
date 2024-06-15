import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FarmerZone(),
    debugShowCheckedModeBanner: false,
  ));
}

class FarmerZone extends StatefulWidget {
  @override
  State<FarmerZone> createState() => _FarmerZoneState();
}

class _FarmerZoneState extends State<FarmerZone> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
          SliverAppBar(
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  children: [Icon(Icons.location_on, color: Colors.white,), Text("  Kochi", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)],
                ),
              ),
            ],
            title: Text(
              "FARMERS FRESH ZONE",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            bottom: AppBar(
              backgroundColor: Colors.green,
              title: SizedBox(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search for vegetables and fruits",
                      hintStyle: TextStyle(color: Colors.black45),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Icon(Icons.search, color: Colors.black45,),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            backgroundColor: Colors.green,
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Colors.green),
                        ),
                        height: 20,
                        width: 120,
                        child: const Center(
                            child: Text(
                              "VEGETABLES",
                              style: TextStyle(fontSize: 12, color: Colors.green),
                            ))),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius:
                          const BorderRadius.all(Radius.circular(100)),
                          border: Border.all(color: Colors.green),
                        ),
                        height: 20,
                        width: 120,
                        child: const Center(
                            child: Text(
                              "FRUITS",
                              style: TextStyle(fontSize: 12, color: Colors.green),
                            ))),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius:
                          const BorderRadius.all(Radius.circular(100)),
                          border: Border.all(color: Colors.green),
                        ),
                        height: 20,
                        width: 120,
                        child: const Center(
                            child: Text(
                              "EXOTIC CUTS",
                              style: TextStyle(fontSize: 12, color: Colors.green),
                            ))),
                  ],
                ),
              ),
              const SizedBox(height: 10),

              CarouselSlider(
                items: [
                  Image(image: AssetImage("assets/image/reading.WEBP"),fit: BoxFit.fill,),
                  Image(image: AssetImage("assets/image/reading.WEBP"),fit: BoxFit.fill,),

                ],
                options: CarouselOptions(
                    autoPlay: true, aspectRatio: 1.5, enlargeCenterPage: true),
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54, width: 1),
                    ),
                    height: 60,
                    width: 100,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: const [
                              Icon(Icons.timer),
                              SizedBox(height: 20, child: Text("30 min policy"))
                            ],
                          ),
                          Column(
                            children: const [
                              Icon(Icons.switch_account_outlined),
                              SizedBox(height: 20, child: Text("Tracebility"))
                            ],
                          ),
                          Column(
                            children: const [
                              Icon(Icons.home),
                              SizedBox(height: 20, child: Text("Local Surrounding"))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                  height: 70,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, top: 10),
                    child: Text(
                      "Shop by Category",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  )),
              const SizedBox(
                height: 0,
              ),
              VegGrid(),

              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: BottomNavigationBar(
                    backgroundColor: Colors.white,
                    selectedItemColor: Colors.green,
                    unselectedItemColor: Colors.green,
                    currentIndex: index,
                    type: BottomNavigationBarType.fixed,
                    onTap: (tapindex) {
                      setState(() {
                        index = tapindex;
                      });
                    },
                    items: [
                      BottomNavigationBarItem(
                          icon: Icon(Icons.home), label: "Home"),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.shopping_cart), label: "Cart"),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.person), label: "Account")
                    ]),
              )
            ]),
          ),
        ]));
  }
}

class VegGrid extends StatelessWidget {
  List<String> images = [
    "https://images.news18.com/ibnlive/uploads/2021/08/tomato1-16299798893x2.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROvtRXHaAOMuDO_2oW95H17oDFf6zyfJ1fpA&usqp=CAU",
    "https://images.news18.com/ibnlive/uploads/2021/08/tomato1-16299798893x2.jpg",
  ];


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5),
        itemCount: images.length,
        itemBuilder: (BuildContext, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 90,
                width: 130,
                // height: MediaQuery.of(context).size.height / 9,
                // width: MediaQuery.of(context).size.width * .3,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 20.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(images[index])),
                ),
              ),
              const SizedBox(
                height: 8,
              ),


            ],
          );
        });
  }
}