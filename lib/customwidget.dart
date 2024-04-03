import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class customwidget extends StatelessWidget {
  final Text txt;
  final Text? descp;
  final Image? img;
  final Color? clr;
  VoidCallback onpress;
  customwidget({this.img,required this.txt,required this.onpress,this.clr,this.descp});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        child: ListTile(
          leading:img ,
          title:txt ,
          subtitle:descp ,
         onTap: onpress,
        ),
      ),
    );
  }
}
