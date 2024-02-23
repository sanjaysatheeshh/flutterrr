import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
      home:Homepage())
  );
}
class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children:[
      Card(
        color: Colors.cyan,
        child: ListTile(
        leading: CircleAvatar(
        backgroundImage: AssetImage("assets/images/pexels-pixabay-258174.jpg"),),
            title:
            Text("sanjay"),
            subtitle: Text("887654321"),
            trailing: Icon(Icons.call),
            ),
      ),
            Card(
              color: Colors.blue,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/pexels-pixabay-258174.jpg"),),
                title:
                Text("sins"),
                subtitle: Text("887654328"),
                trailing: Icon(Icons.call),
              ),
            ),
            Card(
              color: Colors.cyanAccent,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/pexels-pixabay-258174.jpg"),),
                title:
                Text("sss"),
                subtitle: Text("887604328"),
                trailing: Icon(Icons.call),
              ),
            )

    ]
    )
    );
  }

}