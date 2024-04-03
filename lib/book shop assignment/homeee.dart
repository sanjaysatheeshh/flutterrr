import 'package:flutter/material.dart';
import 'package:flutterrr/book%20shop%20assignment/profile.dart';



import 'mainpage2.dart';
import 'newhome.dart';
void main(){
  runApp(MaterialApp(home: mainbook(),debugShowCheckedModeBanner: false,));
}
class mainbook extends StatefulWidget{
  @override
  State<mainbook> createState() => _mainbookState();
}

class _mainbookState extends State<mainbook> {
  var screen=[bookhome(),tabbook(),profilepage()];
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (tabindex){
          setState(() {
            index=tabindex;
          });

        }, items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),
        BottomNavigationBarItem(icon: Icon(Icons.account_box),label: "user Account"),
      ],

      ),
      body:screen[index],
    );
  }
}