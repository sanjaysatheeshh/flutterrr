import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:homesample(),
  ));
}

class homesample extends StatefulWidget{

  @override
  State<homesample> createState() => _homesampleState();
}

class _homesampleState extends State<homesample> {
  var image=["assets/images/pexels-asif-methar-789750.jpg","assets/images/pexels-adi-k-2382868.jpg"];
  var place=["Delhi","Finland","London","Vancouver","Newyork"];
  var country=["India","Europe","UK","Canada","USA"];
  var population=["32.9 mill","5.54 mill","8.8 mill","2.6mill","10 mill"];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Cities Around World",style: TextStyle(color: Colors.black),),
       backgroundColor: Colors.orange,
     ),
     body: ListView.builder(itemBuilder: (context,index){
       return Card(
         shadowColor: Colors.green,
         surfaceTintColor: Colors.red,
         color: Colors.yellow[800],
         child: Row(
           children: [Container(height: 100,width: 200,child:Image(image: AssetImage(image[index]),
           ),
           ),
           Container(
             height: 100,width: 200,
             child: ListTile(
               title: Text("Delhi",style: TextStyle(fontWeight: FontWeight.w100),),
               subtitle: ListView(
                 children: const[
                   Text("India"),
                   Text("Population:32.9 mill"),
                 ],
               ),
             ),
           )
           ],
         ),
       );
   }
     ));
  }
}