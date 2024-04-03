import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(home: tabbook(),));
}

class tabbook extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
      child: Scaffold(
        appBar: AppBar(title: Text("BOOK LENDING",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
          bottom: TabBar(tabs: [
            Tab(child: Text("child"),),
            Tab(child: Text("Humanities"),),
            Tab(child: Text("Education"),),
            Tab(child: Text("Sceince"),),
          ],),
        ),
        body:
        TabBarView(children: [
          SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Card(
                    child: Container(
                      height: 180,
                      width: 400,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
                      child: Wrap(
                        children: [
                          Container(
                            child: Image(image: AssetImage("assets/images/book.jpg"),fit: BoxFit.fill,height: 180,width: 100,),
                          ),
                          Container(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 50),
                                    child: Text("The giant kingdom",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10,left: 40),
                                    child: Text("Drama/adventure"),
                                  ),
                                ],
                              )
                          )

                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      height: 180,
                      width: 400,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
                      child: Wrap(
                        children: [
                          Container(
                            child: Image(image: AssetImage("assets/images/book.jpg"),fit: BoxFit.fill,height: 180,width: 100,),
                          ),
                          Container(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 50),
                                    child: Text("Bears wish",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10,left: 40),
                                    child: Text("  Drama/adventure"),
                                  ),
                                ],
                              )
                          )

                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      height: 180,
                      width: 400,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
                      child: Wrap(
                        children: [
                          Container(
                            child: Image(image: AssetImage("assets/images/book.jpg"),fit: BoxFit.fill,height: 180,width: 100,),
                          ),
                          Container(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 50),
                                    child: Text("animal adventures",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10,left: 40),
                                    child: Text("Drama/periodic/romance"),
                                  ),
                                ],
                              )
                          )

                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      height: 180,
                      width: 400,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
                      child: Wrap(
                        children: [
                          Container(
                            child: Image(image: AssetImage("assets/images/book.jpg"),fit: BoxFit.fill,height: 180,width: 100,),
                          ),
                          Container(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 50),
                                    child: Text("growing story",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10,left: 40),
                                    child: Text("Drama/periodic/emotional"),
                                  ),
                                ],
                              )
                          )

                        ],
                      ),
                    ),
                  ),
                ],
              ),

            ),
          ),
          Text("humanities"),
          Text("Education"),
          Text("sceince")
        ],),
      ),

    );
  }

}