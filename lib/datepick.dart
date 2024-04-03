import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: datepick(),));
}


class datepick extends StatefulWidget{
  @override
  State<datepick> createState() => _datepickState();
}

class _datepickState extends State<datepick> {
  DateTime selectdate=DateTime.now();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child: TextField(
         controller: TextEditingController(text: "${selectdate.toLocal()}".split(" ")[0]),
         readOnly: true,
         onTap:()=>showdate(context),
         decoration: InputDecoration(hintText: "Select Date",suffixIcon: Icon(Icons.calendar_month)),
       ),
     ),
   );
  }
  Future<void>showdate(BuildContext context)async{
    final DateTime? pickdate=await
    showDatePicker(context: context, firstDate: DateTime(2022),lastDate: DateTime(2050));
    if(pickdate!=null && pickdate!=selectdate){
      setState(() {
        selectdate=pickdate;
      });
    }
  }
}