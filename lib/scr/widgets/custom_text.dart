import 'package:flutter/material.dart';
import 'package:food_finder/scr/widgets/commons.dart';


 class CustomText extends StatelessWidget {
   final String text;
   final double size;
   final Color colors;
   final FontWeight weight;

   CustomText({@required this.text, this.size, this.colors, this.weight}); // creating constructor

   @override
   Widget build(BuildContext context) {
     return Text( text, style :TextStyle( fontSize: size ?? 16.0, color: colors ?? black, fontWeight: weight ?? FontWeight.normal )


       
     );
   }
 }