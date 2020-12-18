import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_finder/scr/Screens/home_screen/components/categories_bakery.dart';
import 'package:food_finder/scr/Screens/home_screen/components/categories_groceries.dart';
import 'package:food_finder/scr/Screens/home_screen/components/categories_liquors.dart';
import 'package:food_finder/scr/Screens/home_screen/components/categories_organic.dart';
import 'package:food_finder/scr/Screens/home_screen/components/categories_restaurants.dart';


class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            imagelocation: 'assets/images/restaurantlogo.svg',
            imagecaption: 'Restaurants',
          ),
          
          Category(
            imagelocation: 'assets/images/liquorslogo.svg',
            imagecaption: 'Liquors',
          ),
          
          Category(
            imagelocation: 'assets/images/bakeryicon.svg',
            imagecaption: 'Bakery',
          ),

           Category(
            imagelocation: 'assets/images/organiclogo.svg',
            imagecaption: 'Organic',
          ),

           Category(
            imagelocation: 'assets/images/grocerieslogo.svg',
            imagecaption: 'Groceries',
          ),

        ],
      ),
    );
  }
}


class Category extends StatelessWidget {
  final String imagelocation;
  final String imagecaption;
  
  Category ({@required this.imagelocation,@required this.imagecaption});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(onTap: (){ 
        
        if (imagecaption == "Restaurants") {Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new CategoriesRestaurants(title: imagecaption)));}
        else if (imagecaption == "Liquors") {Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new CategoriesLiquors(title: imagecaption)));}
        else if (imagecaption == "Bakery") {Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new CategoriesBakery(title: imagecaption)));}
        else if (imagecaption == "Organic") {Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new CategoriesOrganic(title: imagecaption)));}
        else if (imagecaption == "Groceries") {Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new CategoriesGroceries(title: imagecaption)));}
         },
      child: Container(
        width: 100.0,
              child: ListTile(
          title: SvgPicture.asset(imagelocation,
          height: 60.0,
          width: 60.0,
          ),
          subtitle: Container(
            alignment: Alignment.topCenter,
            child: Text(imagecaption, style: TextStyle(fontSize: 12.0,),),
          )

        ),
      ),
      ), 
    );
  }
}
