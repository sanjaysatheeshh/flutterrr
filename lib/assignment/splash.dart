import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loginp.dart';


void main() {
  runApp(MaterialApp(
    home: Splashscreen(),
  ));
}

class Splashscreen extends StatefulWidget {
  @override
  State<Splashscreen> createState() => _SpalshscreenState();
}

class _SpalshscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
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
                image: AssetImage("assets/images/glitter.jpeg"),
                fit: BoxFit.fill)),
        child: Center(
          child: Image(
            image: AssetImage("assets/images/fb.png"),
            height: 150,
            width: 150,
          ),
        ),
      ),
    );
  }
}