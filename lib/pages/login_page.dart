import 'package:flutter/material.dart';
import 'package:practice/pages/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();
  
  moveToHome(BuildContext context) async {
    if(_formKey.currentState!.validate()) {
    setState( () {
      changeButton = true;
      });

      await Future.delayed(Duration(seconds: 1));

      await Navigator.pushNamed(context,MyRoute.homeRoute);

      setState(() {
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
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
              ),

              const SizedBox(
                height: 20.0,
              ),

              Text(
                "Welcome $name",
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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

                      validator: (value) {
                        if(value!.isEmpty){
                          return "Username Cannot Be Empty";
                        }
                        return null;
                      },

                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),

                      validator: (value) {
                        if(value!.isEmpty){
                          return "Password Cannot Be Empty";
                        }
                        else if(value.length<6) {
                          return "Password Length Should Be Atleast 6";
                        }
                        return null;
                      },

                    ),
                    const SizedBox(
                      height: 40,
                    ),
        
                    InkWell(
                      onTap: ()  => moveToHome(context),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changeButton ? 50 : 150,
                        height: 40,
                        alignment: Alignment.center,
        
                        child: changeButton
                            ? const Icon(Icons.done,
                             color: Colors.white,)
                            : const Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
        
                        decoration: BoxDecoration(
                            // shape: changeButton? BoxShape.circle : BoxShape.rectangle,
        
                            color: Colors.deepPurple,
                            borderRadius:
                                BorderRadius.circular(changeButton ? 50 : 8)),
                      ),
                    )
        
                    // ElevatedButton(onPressed: () {
                    //   Navigator.pushNamed(context,MyRoute.homeRoute);
                    // },
                    //  child: Text("Login"),
                    //  style: TextButton.styleFrom(minimumSize: Size(120,40)),
                    //  )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
