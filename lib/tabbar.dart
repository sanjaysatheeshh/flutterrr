import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterrr/lisseperateEG.dart';
import 'package:flutterrr/listseperate.dart';

void main(){
  runApp(MaterialApp(home: tabbar(),
  debugShowCheckedModeBanner: false,));
}

class tabbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
     length: 4,
     child: Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.greenAccent,
         title: Text("Tabbar example",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),),
       actions: [
         Icon(Icons.add),
       ],
       bottom: TabBar(
         unselectedLabelColor: Colors.white,
         labelColor: Colors.blue,
         tabs: [
         Tab(child: Icon(Icons.camera_alt),),
         Tab(child: Text("chat",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),),
         Tab(child: Text("contact",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),),
         Tab(child: Text("status",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),),
       ],),
       ),
       body: TabBarView(children: [
       Center(child: Text("camera"),),
           listseperated(),
           Center(child: Text("contact"),),
         Center(child: Text("status"),),

       ],),
     ),
   );
  }

}