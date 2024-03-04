import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Gridviewbuilder(),));
}

class Gridviewbuilder extends StatelessWidget {
  var images = [
    "assets/images/iage1.png",
    "assets/images/iage1.png",
    "assets/images/iage1.png",
    "assets/images/iage1.png",
    "assets/images/iage1.png"
  ];
  var name = ["home", "facebook", "settings", "whatsapp", "instagram"];
  var clr=[Colors.blue,Colors.green,Colors.red,Colors.amberAccent,Colors.deepPurple];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemBuilder: (context, index) {
              return Card(
                child: Column(
                  children: [
                    Image(
                      image: AssetImage(images[index]),height: 100,width: 60,
                    ),
                    Text(name[index])
                  ],
                ),
              );
            },
          itemCount: name.length,
            )
    );
  }
}
