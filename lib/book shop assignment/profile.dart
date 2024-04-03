import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homeee.dart';

void main() {
  runApp(MaterialApp(
    home: profilepage(),
    debugShowCheckedModeBanner: false,
  ));
}

class profilepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(backgroundColor: Colors.yellow,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 450, bottom: 20),
            child: Icon(Icons.menu),
          ),
        ],
        bottom: AppBar(centerTitle: true,backgroundColor: Colors.white,
          title: Text(
            "Profile",
            style: GoogleFonts.gabriela(
                textStyle: Theme.of(context).textTheme.displayLarge,fontSize: 40,fontWeight: FontWeight.w100,color: Colors.black),
          ),

        ),
      ),
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 50,top: 20,right: 50),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/person female.png"),
                radius: 80,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 120,right: 120),
            child: Text("Name",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w100),),
          ),
          Container(
            height: 300,
            width: 500,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.white),
                    child: Wrap(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 10),
                          child: Icon(Icons.person),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 50),
                          child: Text("Edit profile",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.white),
                    child: Wrap(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 10),
                          child: Icon(Icons.settings),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 50),
                          child: Text("Settings",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.white),
                    child: Wrap(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 10),
                          child: Icon(Icons.question_mark),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 50),
                          child: Text("Help & Support",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.white),
                    child: Wrap(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 10),
                          child: Icon(Icons.logout),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 50),
                          child: Text("Logout",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        )
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}