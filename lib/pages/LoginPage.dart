import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset("assets/images/undraw1.png", fit: BoxFit.contain),

            //use it instead of padding
            SizedBox(height: 20),

            const Text("Welcome",
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
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password"
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  ElevatedButton(
                      onPressed:(){
                        print("Button is pressed");
                      },
                      style: TextButton.styleFrom(),
                      child: Text("Login"))
                ],
              ),
            )
          ],
        ));
  }
}
