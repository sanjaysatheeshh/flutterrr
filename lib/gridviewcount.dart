import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(MaterialApp(home: gridviewcount(),));
}

class gridviewcount extends StatelessWidget{
  List<IconData>icons=[FontAwesomeIcons.facebook,FontAwesomeIcons.whatsapp,FontAwesomeIcons.facebook,CupertinoIcons.settings_solid,FontAwesomeIcons.youtube,FontAwesomeIcons.bicycle];
  var color=[Colors.cyan,Colors.green,Colors.redAccent,Colors.blue,Colors.yellow,Colors.pinkAccent,Colors.deepPurple];
  var name=["facebook","whatsapp","facebook","settings","youtube","bicycle"];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: GridView.count(crossAxisCount: 3,
     children: List.generate(6, (index){
       return Card(color: color[index],
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Icon(icons[index]),
           Text(name[index]),
         ],
       ),);
   }),

     ));
  }

}