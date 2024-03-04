import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(){
  runApp(MaterialApp(home: stagex(),));
}
class stagex extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("staggeredrecylerview"),titleTextStyle: TextStyle(color: Colors.blue),),backgroundColor: Colors.blueGrey,
    body: StaggeredGrid.count(crossAxisCount: 4,
    mainAxisSpacing: 4,
    crossAxisSpacing: 4,
    children: const [
    StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 1,
    child: Card(
    child: Column(
    children: [
    Image(image: AssetImage("assets/images/pexels-jonathan-meyer-612999.jpg"),fit: BoxFit.contain),
      Text("havasu falls"),
    ],
    ),
    )),
    StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 3,
    child: Card(
    child: Column(
    children: [
    Image(image: AssetImage("assets/images/pexels-mateusz-walendzik-15771577.jpg"),fit: BoxFit.contain),
    Text("trondheim"),
    ],
    ),
    )),
    StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 3,
    child: Card(
    child: Column(
    children: [Text("portugal"),
    Padding(
    padding: const EdgeInsets.only(bottom: 30),
      child:Image(image: AssetImage("assets/images/pexels-nuno-veludo-3558637.jpg"),fit: BoxFit.contain),

    )],
    ),
    )),
      StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 2,
        child: Card(
          child: Column(
            children: [
              Image(image: AssetImage("assets/images/pexels-paige-thompson-19841515.jpg"),fit: BoxFit.cover),
              Text("rocky mountain national park"),
            ],
          ),
        ))
    ])
    );
  }
}