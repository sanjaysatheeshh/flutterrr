import 'package:flutter/material.dart';
import 'package:flutterrr/slivers.dart';
import 'package:flutterrr/whatsapppui/whatsapp.dart';
import 'listbuilder.dart';
import 'listseperate.dart';

void main(){
  runApp(MaterialApp(home: bottomnav(),debugShowCheckedModeBanner: false,));
}
class bottomnav extends StatefulWidget{
  @override
  State<bottomnav> createState() => _bottomnavState();
}

class _bottomnavState extends State<bottomnav> {
  var screen=[
    whatsapp(),
    Listbuilder(),
    Listseperate(),
    sliverx(),

  ];
  int  index=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("bottom navigation"),),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.orange,
        selectedItemColor: Colors.blue,
        currentIndex: index,
        onTap: (tabindex){
          setState(() {
            index=tabindex;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),label: "notification"),
          BottomNavigationBarItem(icon: Icon(Icons.account_box),label: "account"),
        ],),
      body: screen[index],
    );
  }
}