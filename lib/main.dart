// for wrapping any widget we use shortcut (ctrl+.)

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice/pages/login_page.dart';
import 'package:practice/pages/utils/routes.dart';
import 'package:practice/widgets/theme.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      themeMode: ThemeMode.light,
      
      theme: MyTheme.lightTheme,

      darkTheme: ThemeData(
        brightness: Brightness.light, // Brightness.dark for darkmode
        
      ),

    initialRoute:MyRoute.homeRoute,
    routes: {
      "/" :(context) => LoginPage(),
      MyRoute.homeRoute : (context) => Home(),
      MyRoute.loginRoute : (context) => LoginPage()
    },

    );
  }

}
