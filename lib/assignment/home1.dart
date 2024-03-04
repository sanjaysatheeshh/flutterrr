import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
      home:Home1())
  );
}
class Home1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   {
    return Scaffold(
        body: ListView(
            children:[
              Card(
                color: Colors.cyan,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/pexels-pixabay-258174.jpg"),),
                  title:
                  Text("sanju"),
                  subtitle: Text("88549921"),
                  trailing: Icon(Icons.call),
                ),
              ),
              Card(
                color: Colors.blue,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/pexels-paige-thompson-19841515.jpg"),),
                  title:
                  Text("jins"),
                  subtitle: Text("887094328"),
                  trailing: Icon(Icons.call),
                ),
              ),
              Card(
                color: Colors.cyanAccent,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/pexels-takeshi-arai-19630343.jpg"),),
                  title:
                  Text("sodd"),
                  subtitle: Text("887984328"),
                  trailing: Icon(Icons.call),
                ),
              )

            ]
        )
    );
  }
  }
}