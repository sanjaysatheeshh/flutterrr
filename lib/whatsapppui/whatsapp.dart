import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: whatsapp(),
    debugShowCheckedModeBanner: false,));
}
class whatsapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(title: Text("WhatsApp",
          style: TextStyle(color: Colors.green[700],fontWeight: FontWeight.w800),
        ),

          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(CupertinoIcons.camera),
            ),
            Icon(CupertinoIcons.search),
          ],
          bottom: TabBar(tabs: [
            Tab(child: Icon(Icons.group,size: 30)),
            Tab(child: Text("chats")),
            Tab(child: Text("updates")),
            Tab(child: Text("calls")),


          ],),),
        body: TabBarView(children: [
          Center(child: Text("communities")),
          ListView.builder(itemBuilder: (context,index){
            return SingleChildScrollView(
              child: ListTile(
                leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.person,
                      color: Colors.black,
                    )),
                title: Text(
                  "sanjay",
                  style: TextStyle(fontWeight: FontWeight.w900),
                ),
                subtitle: Text("suii"),
                trailing: Text(
                  "11.11am",
                  style: TextStyle(color: Colors.green),
                ),
              ),
            );
          },
            itemCount: 20,
          ),
          Center(child: Text("Updates")),
          Center(child: Text("calls"))
        ],),
      ),
    );

  }

}