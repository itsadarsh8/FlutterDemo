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
  String textBtn = "Login";
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async{
      if( _formKey.currentState!=null && _formKey.currentState!.validate()){
        setState(() {
          changeButton = changeButton? false: true;
        });
        await Future.delayed(Duration(seconds: 1));
        await Navigator.pushNamed(context, MyRoutes.homeRoute) ;

        setState(() {
          textBtn = "login again";
          changeButton = false;
        });
      }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
                            hintText: "Enter Username", labelText: "Username"),
                        validator: (String? value){
                          if(value!=null && value.isEmpty){
                            return "Username cannot be empty";
                          }
                          return null;
                        },
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
                            validator: (String? value){
                              if(value!=null && value.isEmpty){
                                return "Password cannot be empty";
                              }
                              else if (value!=null && value.length<6){
                                return "Password must be more than 6 char";
                              }
                              return null;
                            },
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
                      Material(
                        color: Colors.deepPurple,
                        borderRadius: changeButton?BorderRadius.circular(50):BorderRadius.circular(20),
                        child: InkWell(
                          splashColor: Colors.white,
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            width: changeButton?50:150,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              shape:  changeButton? BoxShape.circle:BoxShape.rectangle,
                            ),
                            duration: Duration(seconds: 1),

                            child: changeButton? Icon(Icons.done, color: Colors.white,) : Text(
                              textBtn,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: GoogleFonts.aboreto().fontFamily,
                                fontSize: 16
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
