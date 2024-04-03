import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterrr/onboarding/intro%20onboarding.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold,
   )
  }

}

class searchbar extends StatefulWidget{
  @override
  State<searchbar> createState() => _searchbarState();
}

class _searchbarState extends State<searchbar> {
  List<String> allItems =[
    'apple'
    'banana'
    'cherry'
    'dates'
    'mango'
    'lemon'
    'plum'
    'raspberry'
    'strawberry'
  ];
  String searchtext='';
  String searchresult='';
  void filterItems(String query){
    setState(() {
      searchtext=query;
      searchresult='';
    });
  }
  void setSearchResult(String result){
    setState(() {
      searchresult=result;
    });
  }


  @override
  Widget build(BuildContext context) {
    List<String>resultItems=allItems.where((item) => item.toLowerCase().contains
      (searchtext.toLowerCase())).toList();
    return Padding(padding: const EdgeInsets.all(16.0),
    child: Column(
      children: [
        TextField(
          onChanged: (value){
            filterItems(value);
          },
          decoration: const InputDecoration(
            labelText: 'Search',
            hintText: 'Enter a fruit name',
            prefixIcon: Icon(Icons.search),
          ),
        ),
        SizedBox(height: 16),
        Expanded(child: ListView.builder(shrinkWrap: true,
        itemCount: resultItems.length,
        itemBuilder: (context,index){
          return ListTile(
            title: Text(resultItems[index]),
            onTap: (){
              setSearchResult(resultItems[index]);
            },
          );
        }
        ),
        ),
        SizedBox(height: 16),
        Text('Search result:$searchresult',
        style: TextStyle(fontSize: 18),
        )
      ],
    ),
    );

  }
}