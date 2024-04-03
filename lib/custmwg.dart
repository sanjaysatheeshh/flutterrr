import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterrr/customwidget.dart';
import 'package:flutterrr/loginpage.dart';

void main(){
  runApp(MaterialApp(home: custmeg(),));
}
class custmeg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       child:customwidget(txt: Text("welcome"),clr: Colors.blue,img: Image.asset("assets/images/car.jpg"),
       onpress: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>loginpage())
         );
       }
       ) ,
     ),
   );
  }

}
