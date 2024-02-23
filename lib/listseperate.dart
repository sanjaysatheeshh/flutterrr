import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Listseperate(),));
}

class Listseperate extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(itemBuilder:(context,index){
       return Card(
         child: Text("Flutter"),
       ) ;
    },
    separatorBuilder: (context,index){
        if (index %3==0){
        return Divider(
        color: Colors.red,
        thickness: 5,
        );
    }
    else{
      return SizedBox();
    }},
    itemCount: 10),
      );
  }

}