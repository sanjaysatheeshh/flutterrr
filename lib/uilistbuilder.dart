import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: UIlist(),
  ));
}
class UIlist extends StatefulWidget{
  @override
  State<UIlist> createState() => _UIlistState();
}

class _UIlistState extends State<UIlist> {
  var avatar=["F","A","I","H","A","A","A","M"];
  var name=["Facebook","A10 Networks INC","Intel Corp","HP Inc","Advanced Micro Devices Inc","Apple INC","Amazon.com.INC","Microsoft"];
  var price=["500","600","400","550","450","700","800","650"];
  var clr=[200,200,200,200,200,200,200,200];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("List view Builder",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.cyan,
      ),
    body: ListView.builder(
      itemBuilder: (context,index)
      {
      return Card(
        color: Colors.blueGrey[clr[index]],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blue,
          child:Text(
            avatar[index],
            style: TextStyle(color: Colors.white),
          )
          ),
          title: Text(name[index]),
          trailing: Text("\$ ${price[index]}"),
        )

      );
    },itemCount: name.length,
    ),
    );

  }
}