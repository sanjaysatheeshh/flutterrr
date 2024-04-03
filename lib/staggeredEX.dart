import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(
    home: stagex(),
    debugShowCheckedModeBanner: false,
  ));
}

class stagex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Staggeredrecylerview"),
          titleTextStyle: TextStyle(color: Colors.blue),
        ),
        backgroundColor: Colors.blueGrey,
        body: SingleChildScrollView(
          child: StaggeredGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              children:  [
                StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: Card(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              height: 250,
                              width: double.infinity,
                              child: Image(
                                image: AssetImage(
                                    "assets/images/waterfall1.jpg"),
                                height: 80,
                                width: 230,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text("havasu falls"),
                        ],
                      ),
                    )),
                StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 2,
                    child: Card(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 550,
                              width: double.infinity,
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/pexels-mateusz-walendzik-15771577.jpg"),
                                  height: 1200,
                                  width: 250,
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Text("trondheim"),
                        ],
                      ),
                    )),
                StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 2,
                    child: Card(
                        child: Column(
                            children: [
                              Padding(padding: const EdgeInsets.all(10),
                              child: Container(
                                height: 550,
                                    width: double.infinity,
                              child: Image(
                          image: AssetImage(
                              "assets/images/pexels-paige-thompson-19841515.jpg"),
                                  height: 1200,
                                  width: 250,
                                  fit: BoxFit.cover),)),
                      Text("rocky park"),
                    ]))),
                StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: Card(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 250,
                              width: double.infinity,
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/pexels-nout-gons-378570.jpg"),
                                  height: 80,
                                  width: 230,
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Text("portugal"),
                        ],
                      ),
                    ))
              ]),
        ));
  }
}
