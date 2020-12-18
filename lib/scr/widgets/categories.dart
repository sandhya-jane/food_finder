/*import 'package:flutter/material.dart';
import 'package:food_finder/scr/models/category.dart';
import '../commons.dart';
import 'custom_text.dart';

List<Category> categoriesList = [
  Category(name: " fry", image: "a.jpg"),
  Category(name: "french fry", image: "b.jpg"),
  Category(name: "french fry", image: "c.jpg"),
  Category(name: "french fry", image: "d.jpg"),
  Category(name: "french fry", image: "e.jpg"),


];

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
          height: 120.0,
          child: ListView.builder(
            itemCount: categoriesList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index){
                  return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                  color: white,
                  boxShadow: [ BoxShadow (
                    color: red,
                    offset: Offset(4.0, 6.0),
                    blurRadius: 12.0,
                  ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.asset("assets/images/${categoriesList[index].image} ", width: 50.0,),
                ), 
                  ),
                
                SizedBox(height: 10.0,),
                CustomText(text: categoriesList[index].name, size: 16.0,colors: black,), 
                ],
              ),
            );
            },
            ),

        );
  }
}
*/
