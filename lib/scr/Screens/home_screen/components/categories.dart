import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:food_finder/scr/Screens/categories_screen/categories_screen.dart';

class CategoryItem{
final String imagelocation;
final String imagecaption;

  CategoryItem({this.imagelocation, this.imagecaption});

}

final categoryItem = [

          CategoryItem(
            imagelocation: 'assets/images/restaurantlogo.svg',
            imagecaption: 'Restaurants',
          ),
          
          CategoryItem(
            imagelocation: 'assets/images/liquorslogo.svg',
            imagecaption: 'Liquors',
          ),
          
          CategoryItem(
            imagelocation: 'assets/images/bakeryicon.svg',
            imagecaption: 'Bakery',
          ),

           CategoryItem(
            imagelocation: 'assets/images/organiclogo.svg',
            imagecaption: 'Organic',
          ),

           CategoryItem(
            imagelocation: 'assets/images/grocerieslogo.svg',
            imagecaption: 'Groceries',
          ),

        ];
    


class Category extends StatelessWidget {
  final String imagelocation;
  final String imagecaption;
  
  Category ({@required this.imagelocation,@required this.imagecaption});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
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
    );
  }
}
