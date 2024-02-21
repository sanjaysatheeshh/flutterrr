import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Splashscreen(),
  ));
}
class Splashscreen extends StatefulWidget{
  @override
  State<Splashscreen> createState()=> _splashscreenState ();

  }


class _splashscreenState extends State<Splashscreen>{
  @override
  void initState() {
    Timer(Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> login()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
    decoration: BoxDecoration(
    image: DecorationImage(
        image: AssetImage("assets/images/iage1.png"), fit: BoxFit.fill)),
    child: Center(
    child: Image(
    image: AssetImage("assets/images/image2.jpg"),
    height: 100,
    width: 100,
    ),
    ),
    ),
    );

  }

  login() {}
}

