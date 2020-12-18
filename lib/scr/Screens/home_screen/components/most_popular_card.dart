import 'package:flutter/material.dart';
import 'package:food_finder/scr/Screens/home_screen/components/common_card_type1.dart';


class MostPopular extends StatefulWidget {
  final String title;

  const MostPopular({Key key, this.title}) : super(key: key);

  @override
  _MostPopularState createState() => _MostPopularState(title);
}

class _MostPopularState extends State<MostPopular> {
  final String title;

  _MostPopularState(this.title);


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260.0,
      child: Column(
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
          

          Container(
            //width: double.infinity,
            height: 228.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[

                CommonCard(
                  name:"Chicken 365",
                  picture:'assets/images/item_3.jpg',
                  restaurantName: "Foodcafe",
                  location:"Lakeside, Pokhara",
                   wishlist: null,

                ),
                CommonCard(
                  name:"Chicken Sizzler",
                  picture:'assets/images/item_4.jpg',
                  restaurantName:"Dream High",
                  location:"Kathmandu",
                  wishlist: "",
                ),
                 CommonCard(
                  name:"Bologenese spagetthi",
                  picture:'assets/images/item_4.jpg',
                  restaurantName:"Burger King",
                  location:"Lakeside, Pokhara",
                   wishlist: null,

                ),
                CommonCard(
                  name:"Chicken Dragon",
                  picture:'assets/images/item_1.jpg',
                  restaurantName:"Cafe Aroma",
                  location:"Kathmandu",
                  wishlist: "",
                ),




              ],

            ),
          ),
        ],
      ),
    );
  }
}