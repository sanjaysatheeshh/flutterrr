import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loginpage.dart';

void main() {
  runApp(MaterialApp(
    home: Splashscreen(),
  ));
}

class Splashscreen extends StatefulWidget {
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>loginpage()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/sandiegoboard.jpg"),
                fit: BoxFit.fill)),
        child: Center(
          child: Image(
            image: AssetImage("assets/images/pexels-pixabay-460672.jpg"),
            height: 150,
            width: 150,
          ),
        ),
      ),
    );
  }
}