import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:loginp(),));
}
class loginp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

  {
    return Scaffold(
      body: Container(color: Colors.cyan,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Image(image: AssetImage("assets/images/pexels-pixabay-460672.jpg"),
                height: 100,
                width: 100,),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, right: 40, left: 40,),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Username",
                    hintText: "username",
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 20, right: 40, left: 40, bottom: 50,),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "password",
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: Icon(Icons.visibility_off),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))
                ),
              ),
            ),
            ElevatedButton(onPressed: () {

            },
                child: Text("login")),
            TextButton(onPressed: () {},
                child: Text("Not a user,Create new user"))
          ],
        ),
      ),
    );
  }
  }
}
