import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: sliverx(),
  debugShowCheckedModeBanner: false,));
}

class sliverx extends StatelessWidget{
  var color=[900,800,700,600,500,400,300,200,100,50];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.blue[100],
     body: CustomScrollView(
       slivers: [
         SliverAppBar(
         backgroundColor: Colors.blue,
       floating: true,
       pinned: true,
         title: const Text("Custom example"),
         actions: [
           IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart)),
           IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),
         ],
          // expandedHeight: 140,
           //elevation: 0,
           bottom: AppBar(backgroundColor: Colors.white,
             elevation: 0,
             title: Container(
               height: 40,
               width: double.infinity,
               decoration: BoxDecoration(
                   color: Colors.red[200],
                   borderRadius: BorderRadius.circular(30)
               ),
               child: TextField(
                 decoration: InputDecoration(hintText: "type here",
                     prefixIcon: Icon(Icons.search),
                     suffixIcon: Icon(Icons.camera_alt),
                     border: InputBorder.none),
               ),
             ),
           ),
         ),
         SliverList(delegate: SliverChildBuilderDelegate((context,index){
           return Card(
             color: Colors.green[color[index]],
             child: Container(height:100,),
           );
         },childCount: color.length
         ),
    ),
       ],
     ),
   );

  }

}