import 'package:flutter/material.dart';
import 'package:food_finder/scr/scoped-models/main_model.dart';
import 'package:scoped_model/scoped_model.dart';
import 'scr/Screens/home_screen/home_screen.dart';
//import 'style.dart';

class MyApp extends StatelessWidget {

  MainModel mainModel = MainModel();

  @override
  Widget build(BuildContext context) {
    return ScopedModel<MainModel>(
      
      model: mainModel,
      
       child:  MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'Food Finder',
      home: MyHomePage(model: mainModel),
      theme: ThemeData(
       primaryColor: Color(0xFFFB415B),
    ),
    ),
      
      );
  }
}