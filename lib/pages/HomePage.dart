import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String time = "4:20";
  var months = "24 months";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Interns: App"),
      ),
      body: Center(
          child: Container(
              child: Text("days = $days , time = $time , months = $months ",
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.blue
                  )))),
      drawer: const Drawer(),
    );
  }
}
