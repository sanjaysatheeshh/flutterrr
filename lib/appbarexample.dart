import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: appbarexample(),
  debugShowCheckedModeBanner: false,));

}

class appbarexample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.blueGrey,
      title: Text("Whatsapp"),
      leading: Icon(Icons.menu),
      actions: [
        Icon(Icons.camera_alt),
        Icon(Icons.search),
      PopupMenuButton(itemBuilder: (context){
        return [
          PopupMenuItem(child: Text("settings")),
          PopupMenuItem(child: Text("New Group")),
          PopupMenuItem(child: Text("New Broadcast")),
          PopupMenuItem(child: Text("Linked Devices")),
        ];
      })
      ],
    ),
    );
  }

}