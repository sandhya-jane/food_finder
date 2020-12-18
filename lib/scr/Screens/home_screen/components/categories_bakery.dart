import 'package:flutter/material.dart';
import 'package:food_finder/scr/Screens/home_screen/components/categories_list.dart';

class CategoriesBakery extends StatelessWidget {
final String title ;

const CategoriesBakery({Key key, this.title}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {



    return Scaffold(

       appBar:  new AppBar(
        elevation: 0.5,
        title: Text(title , textAlign: TextAlign.center ),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search),onPressed: (){}),
          
        ],
    ),


        body:    
    
     Container(
      child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[

                CategoriesList(
                  restaurantName: "Hotel Lakeside",
                  location: "Lakeside, Pokhara",
                  logo: "assets/images/logo.png",

                ),
               CategoriesList(
                  restaurantName: "Hotel Lakeside",
                  location: "Lakeside, Pokhara",
                  logo: "assets/images/logo.png",

                ),

                CategoriesList(
                  restaurantName: "Hotel Lakeside",
                  location: "Lakeside, Pokhara",
                  logo: "assets/images/logo.png",

                ),

                CategoriesList(
                  restaurantName: "Hotel Lakeside",
                  location: "Lakeside, Pokhara",
                  logo: "assets/images/logo.png",

                ),
                
              ],

            ),
    )
    );
  }
}