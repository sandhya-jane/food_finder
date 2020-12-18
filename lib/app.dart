import 'package:flutter/material.dart';
import 'scr/Screens/home_screen/home_screen.dart';
//import 'style.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'Food Finder',
      home: MyHomePage(),
      theme: ThemeData(
       primaryColor: Color(0xFFFB415B),
    ),
    );
  }
}