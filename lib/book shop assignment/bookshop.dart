import 'dart:async';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterrr/book%20shop%20assignment/log.dart';


void main(){
  runApp(MaterialApp(home: splashscreenn(),debugShowCheckedModeBanner: false,));
}

class splashscreenn extends StatefulWidget{
  @override
  State<splashscreenn> createState() => _splashscreennState();
}

class _splashscreennState extends State<splashscreenn> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>log()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/yellowww.jpg"),
                fit: BoxFit.fill)),
        child: Center(
          child: Image(
            image: AssetImage("assets/images/yellowww.jpg"),
            height: 100,
            width: 300,
          ),
        ),
      ),
    );
  }
}