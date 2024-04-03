import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Listbuilder(),
  ));
}
class Listbuilder extends StatefulWidget{
  @override
  State<Listbuilder> createState() => _ListbuilderState();
}

class _ListbuilderState extends State<Listbuilder> {
  var name=["sanju","nishin","sins","bindya","sahal"];
  var phone=["9898989877","1234567822","9876543211","3456789123","9989897876"];
  var images=["assets/images/sandiegoboard.jpg","assets/images/pexels-pixabay-258174.jpg","assets/images/window.jpg","assets/images/apple.png","assets/images/pexels-pixabay-258174.jpg"];
  var color=[Colors.blue,Colors.green,Colors.red,Colors.amberAccent,Colors.deepPurple];
  var clr=[800,700,600,500,400];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.black38,
     body: ListView.builder(itemBuilder: (context,index){
       return Card(
         shadowColor: Colors.green[800],
         surfaceTintColor: Colors.red,
         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
         color: Colors.yellow[clr[index]],
         child: ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage(images[index]),),
           title: Text("${name[index]}"),
           subtitle: Text("${phone[index]}"),
           trailing: Icon(Icons.call),
         ),
       );
     },
     itemCount: name.length,
     ),
   );
  }
}