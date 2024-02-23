import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loginpage.dart';

void main() {
  runApp(MaterialApp(
    home: Registerpage(),
  ));
}

class Registerpage extends StatefulWidget {
  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  GlobalKey<FormState>Formkey=GlobalKey();
  bool Showpass= true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.cyan,
        child: Column(
          children: [
            const Padding(
                padding: EdgeInsets.only(
                  top: 100,
                ),
                child: Text(
                  "Register Page",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                )),
            Padding(
              padding: EdgeInsets.only(top: 50, left: 70, right: 70),
              child: Form(
                key: Formkey,
                child: TextFormField(
                  validator: (Name){
                    if(Showpass==true){
                      Showpass=false;
                    }
                    else{
                      Showpass=true;
                    }
                  },
                  decoration: InputDecoration(
                      labelText: "UserName",
                      hintText: "username",
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50, left: 70, right: 70),
              child: TextField(
                obscureText: Showpass,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "Email",
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50, left: 70, right: 70),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Password",
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: Icon(Icons.visibility_off),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 50, left: 70, right: 70, bottom: 50),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Confirm password",
                  hintText: "Confirm password",
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                ),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    textStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
                onPressed: () {
                  final valid=Formkey.currentState!.validate();
                  if(valid){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>loginpage()));
                  }


                },
                child: Text("Register")),
          ],
        ),
      ),
    );
  }
} /**/