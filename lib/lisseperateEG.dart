import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class listseperated extends StatelessWidget {
  var month = [
    "January",
    "Februay",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(itemBuilder: (context, index) {
        return Card();
      }, separatorBuilder: (context, index) {
        return Card();
      },itemCount: month.length,)
    );
  }
}
