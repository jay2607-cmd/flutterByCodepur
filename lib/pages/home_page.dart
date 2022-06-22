import 'package:flutter/material.dart';
import 'package:practice/widgets/drawer.dart';

// context is deciding the location of element.

class Home extends StatelessWidget {
  int day = 10;
  var name = "jay";
  
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog Page"),
      ),
      
      body: Center(child: Text("Welcome to $day days of flutter by $name")),

      drawer: MyDrawer(),
    );
  }
}