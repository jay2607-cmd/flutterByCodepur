import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  int day = 10;
  var name = "jay";
  
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
      ),
      
      body: Center(child: Text("Welcome ")),

      drawer: Drawer(),
    );
  }
}