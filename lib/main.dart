// for wrapping any widget we use shortcut (ctrl+.)

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice/pages/login_page.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
} 

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.light, // Brightness.dark for darkmode
      ),
    initialRoute:"/login",
    routes: {
      "/" :(context) => LoginPage(),
      "/home" : (context) => Home(),
      "/login" : (context) => LoginPage()
    },

    );
  }

}
