 import 'package:flutter/cupertino.dart';
class RestaurantsList{
final String restaurantName;
final String location;
final String logo;



RestaurantsList( {@required this.restaurantName , @required this.location , @required this.logo});
}

final restaurantsList = [
RestaurantsList(
                  restaurantName: "Hotel Lakeside",
                  location: "Lakeside, Pokhara",
                  logo: "assets/images/logo.png",

                ),
               RestaurantsList(
                  restaurantName: "Hotel La",
                  location: "Lakeside, Pokhara",
                  logo: "assets/images/logo.png",

                ),

                RestaurantsList(
                  restaurantName: "Hotel lak",
                  location: "Lakeside, Pokhara",
                  logo: "assets/images/logo.png",

                ),

                RestaurantsList(
                  restaurantName: "Hotel Lakeside",
                  location: "Lakeside, Pokhara",
                  logo: "assets/images/logo.png",

                ),

];

