import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_intern/pages/LoginPage.dart';
import '/pages/HomePage.dart';


void main() {
  runApp(myInterns());
}

class myInterns extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //use this or "/" in routes
      //home:HomePage(),

      //choose theme type here
      themeMode: ThemeMode.light,

      //customise light theme
      theme: ThemeData(primarySwatch: Colors.deepPurple, brightness: Brightness.light, fontFamily:GoogleFonts.lato().fontFamily ),

      //customise dark theme
      darkTheme: ThemeData(brightness: Brightness.dark, primarySwatch: Colors.red),

      //customise first route
      initialRoute: "/login",

      //Layout manager
      routes: {
        "/": (context) => new HomePage(),
        "/login": (context) => new LoginPage(),
      },
    );
  }
}


//Padding, TextFormField, Assets, Images