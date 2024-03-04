import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: stack(),));
}

class stack extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: Colors.red,height: double.infinity,width: double.infinity,),
          Positioned(child: Container(color: Colors.yellow),
          height: 100,
          width: 100,
            left: 100,
            top: 100,
          ),
          Positioned(child: Container(color: Colors.green),height: 100,width: 100,right: 100,top: 100,
          )
        ],
      ),
    );
  }

}