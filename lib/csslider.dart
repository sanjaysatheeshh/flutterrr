import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: csslider(),
  debugShowCheckedModeBanner: false,
  ));
}

class csslider extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       child: CarouselSlider(

           options: CarouselOptions(
             height: 400,
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
           ), items: [
             Image(image: AssetImage("assets/images/wavesss.jpg")),
             Image(image: AssetImage("assets/images/pexels-paul-theodor-oja-3493651.jpg")),
             Image(image: AssetImage("assets/images/pexels-pixabay-258174.jpg")),
       ],
       ),
     ),
   );
  }

}