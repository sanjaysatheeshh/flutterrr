import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: listviewcustom(),
  ));
}

class listviewcustom extends StatelessWidget{
  var name=["sanju","nishin","sins","bindya","sahal"];
  var phone=["9898989877","1234567822","9876543211","3456789123","9989897876"];
  var images=["assets/images/pexels-stephen-niemeier-176837.jpg","assets/images/pexels-pixabay-258174.jpg","assets/images/image2.jpg","assets/images/iage1.png","assets/images/pexels-pixabay-258174.jpg"];
  var color=[Colors.blue,Colors.green,Colors.red,Colors.amberAccent,Colors.deepPurple];
  var clr=[800,700,600,500,400];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context, index){
       return Card(color: color[index],
         child: ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage(images[index]),),
           title: Text("${name[index]}"),
           subtitle: Text("${phone[index]}"),
           trailing: SizedBox(
          child: Wrap(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
              IconButton(onPressed: (){}, icon: Icon(Icons.delete))
            ],
          ),
           ),
         ),
       );
    //},
    // [
      // Card(
        // child: Text("Hello"),
         //color: Colors.red,
       //),
       //Card(
        // child: Text("Hello"),
         //color: Colors.red,
       //),
       //Card(
         //child: Text("Hello"),
         //color: Colors.red,
       //),
       //Card(
         //child: Text("Hello"),
         //color: Colors.red,
       //),
     //]
       // List.generate(7, (index) => Card(child: Text("Hello"),))
     //)
     //),
  // )
  },
       childCount: name.length
  )),

   );
}}