import 'package:flutter/cupertino.dart';
import 'package:food_finder/scr/Screens/home_screen/components/featured_restaurants.dart';



class FeaturedRestaurantList extends StatelessWidget {
  final String title;

  const FeaturedRestaurantList({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[

           Padding(
              padding: const EdgeInsets.only(top: 16,left:18, right:18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  ), 
                ],
              ),
           ),
                  
                  
     ListView(
       shrinkWrap: true,
       physics: const NeverScrollableScrollPhysics(),
    children: <Widget>[
     FeaturedRestaurant(
  name: "Foodcafe",
  picture: "assets/images/item_3.jpg",
  type: "Multicuisine",
  location: "Newroad",
  logo: "assets/images/logo.png"
),

FeaturedRestaurant(
  name: "Foodcafe",
  picture: "assets/images/item_1.jpg",
  type: "Multicuisine",
  location: "Newroad",
  logo: "assets/images/logo.png"
),

FeaturedRestaurant(
  name: "Foodcafe",
  picture: "assets/images/item_2.jpg",
  type: "Multicuisine",
  location: "Newroad",
  logo: "assets/images/logo.png"
),

FeaturedRestaurant(
  name: "Foodcafe",
  picture: "assets/images/item_3.jpg",
  type: "Multicuisine",
  location: "Newroad",
  logo: "assets/images/logo.png"
),
             ],
), 
        ],
    );
            
  }
}

