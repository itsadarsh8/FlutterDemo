import 'package:flutter/material.dart';
import 'package:my_intern/Home_Page.dart';

void main(){
  runApp(myInterns());
}

class myInterns extends StatelessWidget {
  const myInterns({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Home_Page(),
    );
  }
}

