import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_intern/utils/Routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String demoText = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/undraw1.png", fit: BoxFit.cover,height: 500,),

              //use it instead of padding
              SizedBox(height: 20),

               Text("Welcome $demoText",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter UserName", labelText: "Username"),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:30 ),
                      child: TextFormField(
                        onChanged: (txt){
                          demoText = txt;
                          setState(() {});
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Enter Password",
                            labelText: "Password"
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                    // ElevatedButton(
                    //     onPressed:(){
                    //       print("Button is pressed");
                    //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //     },
                    //     style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                    //     child: Text("Login"))
                    InkWell(
                      onTap: () async{
                        setState(() {
                          changeButton = changeButton? false: true;
                        });
                        await Future.delayed(Duration(seconds: 1));

                        changeButton? Navigator.pushNamed(context, MyRoutes.homeRoute) : null;
                      },
                      child: AnimatedContainer(
                        width: 150,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: changeButton? Colors.blue : Colors.purple,
                          shape: BoxShape.rectangle,
                          //borderRadius: BorderRadius.circular(50)
                        ),
                        duration: Duration(seconds: 1),

                        child: changeButton? Icon(Icons.done) : Text(
                          "Login",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: GoogleFonts.aboreto().fontFamily,
                            fontSize: 16
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
