import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: farmerui(),debugShowCheckedModeBanner: false,));
}

class farmerui extends StatefulWidget{
  @override
  State<farmerui> createState() => _farmeruiState();
}

class _farmeruiState extends State<farmerui> {
  int index=1;
  var img=["assets/images/veg1.jpg","assets/images/veg2.jpg","assets/images/veg3.jpg"];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("FARMERS FRESH ZONE",style: TextStyle(color: Colors.white),),
     actions: [
       IconButton(onPressed: (){}, icon: Icon(Icons.location_pin,color: Colors.white,),),
       Text("Kochi  ",style: TextStyle(color: Colors.white),)
     ],
       backgroundColor: Colors.green,
       bottom: AppBar(
         title: Container(
           child: Card(
             child: TextField(
               decoration: InputDecoration(
                 hintText: "search for vegetables and fruits..",prefixIcon: Icon(Icons.search)
               ),
             ),
           ),
         ),
         backgroundColor: Colors.green,
       ),
     ),
     body: CustomScrollView(
    slivers: [
       SliverList(delegate: SliverChildListDelegate(
    [
      Container(
           height: 50,width: double.infinity,
           child: Column(
             children: [
               Container(
                 height: 50,width: double.infinity,
                 child: Row(
                       children: [
                         Padding(padding: const EdgeInsets.only(left: 50,top: 10),
                           child: Container(
                             height: 30,width: 100,
                             decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green),
                             child: Center(child: Text("VEGETABLES"),),
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 50,top: 10),
                           child: Container(
                             height: 30,width:80,
                             decoration:  BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green),
                             child: Center(child: Text("FRUITS"),),
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 50,top: 10),
                           child: Container(
                             height: 30,width:80,
                             decoration:  BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green),
                             child: Center(child: Text("OTHERS"),),
                           ),
                         ),
                       ],
                     ),
               ),
         CarouselSlider(

           options: CarouselOptions(
             height: 250,
             aspectRatio: 2.0,
             viewportFraction: 0.8,
             initialPage: 0,
             enableInfiniteScroll: true,
             reverse: false,
             autoPlay: true,
             autoPlayInterval: Duration(seconds: 3),
             autoPlayAnimationDuration: Duration(milliseconds: 800),
             autoPlayCurve: Curves.fastOutSlowIn,
             enlargeCenterPage: true,
             enlargeFactor: 0.3,

             scrollDirection: Axis.horizontal,
           ),
           items: [
           Image(image: AssetImage("assets/images/wavesss.jpg")),
           Image(image: AssetImage("assets/images/pexels-paul-theodor-oja-3493651.jpg")),
           Image(image: AssetImage("assets/images/pexels-pixabay-258174.jpg")),
         ],
         ),
         Container(height: 50,width: 400,decoration: BoxDecoration(shape: BoxShape.rectangle,color: Colors.white),
           child: Row(
             children: [
               Padding(
                 padding: const EdgeInsets.only(left: 40),
                 child: Column(
                   children: [
                     Icon(Icons.timer),
                     Text("30 mins policy")
                   ],
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(left: 40),
                 child: Column(
                   children: [
                     Icon(Icons.contacts_sharp),
                     Text("Tracebility")
                   ],
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(left: 40),
                 child: Column(
                   children: [
                     Icon(Icons.house),
                     Text("Local surrounding")
                   ],
                 ),
               ),
             ],
           ),
         ),
     Container(
       child: Padding(
         padding: const EdgeInsets.only(right: 330),
         child: Text("shop by category",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
       ),
     ),
     ],
   ),
      )]
   ),
    ),

    SliverGrid(delegate: SliverChildBuilderDelegate((context, index){
    return Card(
    child: Container(
    height: 40,
    width:80,
    child: Image(image: AssetImage(img[index]),fit: BoxFit.fill),
    ),
    );
    },
    childCount: img.length), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3
    )),
   ]
  ),
    bottomNavigationBar: BottomNavigationBar(
    unselectedItemColor: Colors.green,
    selectedItemColor: Colors.black,
    currentIndex: index,
    onTap: (tabindex) {
    setState(() {
    index = tabindex;
    });
    }, items: [
    BottomNavigationBarItem(icon: Icon(Icons.home),label:"home"),
    BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "cart"),
    BottomNavigationBarItem(icon: Icon(Icons.account_box),label: "account"),
    ],
    ),);
  }
}
