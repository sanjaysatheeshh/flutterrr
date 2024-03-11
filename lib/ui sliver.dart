import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: uisliver(),
    debugShowCheckedModeBanner: false,
  ));
}

class uisliver extends StatelessWidget {
  var name = ["Awesome room near Kakkanad ","Beautiful room","Peaceful room","Vintage room","Honeymoon room"];
  var image = ["assets/images/window.jpg","assets/images/pexels-nout-gons-378570.jpg","assets/images/pexels-adi-k-2382868.jpg","assets/images/pexels-nuray-19820297.jpg","assets/images/pexels-mateusz-walendzik-15771577.jpg"];
  var prize = ["40","50","30","60","40"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Icon(Icons.menu),
            backgroundColor: Colors.cyan,
            floating: true,
            pinned: true,
            flexibleSpace: Padding(
              padding: const EdgeInsets.only(top: 20, left: 150),
              child: Text(
                "Type Your Location",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20),
              ),
            ),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite)
              )
            ],
            bottom: AppBar(
              backgroundColor: Colors.cyan,
              title: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white),
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Kakkanad,kochi",
                    prefixIcon: Icon(CupertinoIcons.search),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  color: Colors.white,
                  height: 120,
                  child: Stack(
                    children: [
                      Positioned(
                        height: 80,
                        width: 80,
                        child: Container(
                          child: Card(
                            color: Colors.pink,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Center(child: Icon(Icons.hotel)),
                                ),
                                Center(child: Text("Hotel"))
                              ],
                            ),
                          ),
                        ),
                        top: 20,
                        left: 100,
                      ),
                      Positioned(
                        height: 80,
                        width: 80,
                        child: Card(
                          color: Colors.lightBlueAccent,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child:
                                Center(child: Icon(Icons.restaurant_outlined)),
                              ),
                              Center(child: Text("Restaurant"))
                            ],
                          ),
                        ),
                        top: 20,
                        left: 200,
                      ),
                      Positioned(
                        height: 80,
                        width: 80,
                        child: Card(
                          color: Colors.orange,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Center(child: Icon(Icons.local_cafe)),
                              ),
                              Center(child: Text("Cafe"))
                            ],
                          ),
                        ),
                        top: 20,
                        left: 300,
                      ),
                    ],
                  ),
                )
              ])),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                color: Colors.white,
                height: 300,
                child: Card(
                  child: Stack(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
                      child: Container(
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(image[index]), fit: BoxFit.fill)),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      right: 20,
                      child: Container(
                          height: 35,
                          width: 35,
                          color: Colors.white,
                          child: Center(child: Text('\$${prize[index]}'))),
                    ),
                    Positioned(
                        top: 210,
                        left: 10,
                        child: Text(
                          name[index],
                          style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                        )),
                    Positioned(top: 237, left: 10, child: Text("Kakkanad,Kochi")),
                    Positioned(
                        top: 15,
                        right: 15,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(CupertinoIcons.star, color: Colors.black26)
                        )
                    ),
                    Positioned(
                      top: 260,
                      left: 10,
                      child: Container(
                        child: Wrap(
                          children: [
                            Icon(Icons.star, color: Colors.green,),
                            Icon(Icons.star, color: Colors.green,),
                            Icon(Icons.star, color: Colors.green,),
                            Icon(Icons.star, color: Colors.green,),
                            Icon(Icons.star, color: Colors.green,),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 265,
                      left: 135,
                      child: Text(
                        "(200 reviews)",
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                    ),
                  ]
                  ),
                ),
              );
            },
                childCount: image.length
            ),
          ),
        ],
      ),
    );
  }
}
