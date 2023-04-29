import 'package:flutter/material.dart';

class Home_Page extends StatelessWidget {


  final int days = 30;
  final String time = "4:20";
   var months = "24 months";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Interns: App"),
      ),
      body:Center(
        child:Container(
          child:Text("days = $days , time = $time , months = $months")
        )
      ),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(onPressed: () {  },),
    );
  }
}

