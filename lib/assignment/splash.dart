import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loginp.dart';

void main(){
  runApp(MaterialApp(home: splash(),));
}

class splash extends StatefulWidget{
  @override
  State<splash> createState() => splashState();
}

class splashState extends State<splash> {
  @override
  void initstate(){
    Timer(Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>loginp()));
    }
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       decoration: BoxDecoration(
         image: DecorationImage(
           image: AssetImage("assets/images/window.jpg"),
           fit: BoxFit.fill
         )),
       child: Center(
         child: Image(
           image: AssetImage("assets/images/pexels-adi-k-2382868.jpg"),
           fit: BoxFit.fill,
           height: 150,width: 150,

         ),
       ),
     ),
     );
  }
}