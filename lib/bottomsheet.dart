import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main(){
  runApp(MaterialApp(home: bottomsheet(),));
}
class bottomsheet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("bottomsheet"),),
     body: Center(child: GestureDetector(
       onTap: ()=> show(context),
    child: Text("showpass"),
     ),),
   );
  }

  void show(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context)
    {
      return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text("facebook"),
              leading: FaIcon(FontAwesomeIcons.facebook),
            ),
            ListTile(
              title: Text("whatsapp"),
              leading: FaIcon(FontAwesomeIcons.whatsapp),
            ),
            ListTile(
              title: Text("message"),
              leading: FaIcon(FontAwesomeIcons.message),
            ),
          ],),
      );
    });