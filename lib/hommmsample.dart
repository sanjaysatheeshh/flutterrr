import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: hommmsample(),
  ));
}

class hommmsample extends StatefulWidget {
  @override
  State<StatefulWidget> createState()=>_hommmsample();

  }

class _hommmsample extends State<hommmsample> {
  var image = ["assets/images/pexels-asif-methar-789750.jpg","assets/images/pexels-paul-theodor-oja-3493651.jpg","assets/images/pexels-pixabay-460672.jpg","assets/images/pexels-adi-k-2382868.jpg"];
  var place = ["Delhi", "Finland", "London", "Vancouver"];
  var country = ['India', 'Europe', 'UK', 'Canada'];
  var info = ['32.9 mill', '5.54 mill', '8.8 mill', '2.6 mill'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
        "Cities Around World",
        style: TextStyle(color: Colors.white),
    ),
    ),
        body: ListView.builder(
        itemBuilder: (context, index) {
      return Card(
          color: Colors.yellow,
          shadowColor: Colors.black,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    child: Row(
    children: [
    Container(
    height: 100,
    width: 200,
    child: Card(
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10)),
    child: Image(
    image: AssetImage(image[index]),
    fit: BoxFit.fill,
    )),
    ),
      Container(
        height: 100,
        width: 200,
        child: ListTile(
          title: Text(
            place[index],
            style:
            TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
          ),
          subtitle: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  country[index],
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              Text("Population: ${info[index]}")
            ],
          ),
        ),
      )
    ],
    ),
      );
        },
          itemCount: place.length,
        ),
    );
  }
}
