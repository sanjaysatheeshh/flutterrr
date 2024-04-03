import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: drwer(),));


}
class drwer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("mail"),),
     drawer: Drawer(backgroundColor: Colors.cyan,
       child: ListView(
         children: [
           UserAccountsDrawerHeader(accountName: Text("sanjay"), accountEmail: Text("sanjay@gmail.com"),
           currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("assets/images/person1.png"),),
             otherAccountsPictures: [
               CircleAvatar(backgroundImage: AssetImage("assets/images/person.png"),),
               CircleAvatar(backgroundImage: AssetImage("assets/images/person.png"),),
             ],
             decoration: BoxDecoration(
                 image:DecorationImage(image:AssetImage("assets/images/pexels-pixabay-258174.jpg"),fit: BoxFit.fill),
           ),
           ),
           ListTile(
             leading: Icon(Icons.email),
             title: Text("All mail"),
           ),
           ListTile(
             leading: Icon(Icons.drafts),
             title: Text("Drafts"),
           ),
           ListTile(
             leading: Icon(Icons.send),
             title: Text("Send"),
           ),
           ListTile(
             leading: Icon(Icons.outbox),
             title: Text("Outbox"),
           ),
           ListTile(
             leading: Icon(Icons.delete),
             title: Text("Trash"),
           ),
         ],

       ),
     ),
     body: Center(child: Text("heyya"),),
   );
  }

}