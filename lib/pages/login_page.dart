import 'package:flutter/material.dart';
import 'package:practice/pages/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
                
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "Welcome",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter username",
                        labelText: "Username",
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context,MyRoute.homeRoute);
                    },
                     child: Text("Login"),
                     style: TextButton.styleFrom(minimumSize: Size(120,40)),
                     )
                  ],
                ),
              )
            ],
          ),
        ),
      );
    
  }
}
