import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

 void main(){
   runApp(MaterialApp(home: Gridbuilder(),));
 }
class Gridbuilder extends StatelessWidget{
   List<IconData> icn=[FontAwesomeIcons.car,FontAwesomeIcons.bicycle,Icons.directions_boat,FontAwesomeIcons.bus,FontAwesomeIcons.train,Icons.directions_walk,Icons.contact_mail,Icons.duo,Icons.hourglass_bottom_outlined];
  var name=['Car','Bicycle','Boat','Bus','Train','Walk','Contact','Duo','Hour'];
  var clr=[Colors.cyan,Colors.blueGrey,Colors.grey,Colors.indigo,Colors.cyanAccent,Colors.tealAccent,Colors.green,Colors.brown,Colors.teal];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Grid view Builder'),
    ),
    body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (context,index){
      return Card(
        color: clr[index],
        child: Column(
          children: [
            Padding(padding: const EdgeInsets.only(top: 20),
            child: Icon(icn[index]),
            ),
            Padding(padding: const EdgeInsets.only(top: 40),
            child: Text(name[index]),
            ),
          ],
        ),
      );
    },
    itemCount: name.length,
    )
  );
  }

}