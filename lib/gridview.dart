import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Gridview(),));
}

class Gridview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gridview"),
      ),
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      children: [
        Card(
          child: Column(
            children: [
              Text("Home"),
              Icon(Icons.home)
            ],
          ),
        ),
        Card(
          child: Column(
            children: [
              Text("Home"),
              Icon(Icons.home)
            ],
          ),
        ),
        Card(
          child: Column(
            children: [
              Text("Home"),
              Icon(Icons.home)
            ],
          ),
        ),
        Card(
          child: Column(
            children: [
              Text("Home"),
              Icon(Icons.home)
            ],
          ),
        ),
        Card(
          child: Column(
            children: [
              Text("Home"),
              Icon(Icons.home)
            ],
          ),
        ),
        Card(
          child: Column(
            children: [
              Text("Home"),
              Icon(Icons.home)
            ],
          ),
        ),
        Card(
          child: Column(
            children: [
              Text("Home"),
              Icon(Icons.home)
            ],
          ),
        ),
      ],),
      
    );
  }
  
}