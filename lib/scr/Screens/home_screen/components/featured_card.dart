import 'package:flutter/material.dart';
import 'package:food_finder/scr/Screens/home_screen/components/common_card_type1.dart';


class CardList extends StatefulWidget {
  final String title;

  const CardList({Key key, this.title}) : super(key: key);

  @override
  _CardListState createState() => _CardListState(title);
}

class _CardListState extends State<CardList> {
  final String title;

  _CardListState(this.title);


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
                  name:"Spicy Noodles",
                  picture:'assets/images/item_2.jpg',
                  restaurantName: "Foodcafe",
                  location:"Lakeside, Pokhara",
                   wishlist: null,

                ),
                CommonCard(
                  name:"French Fries",
                  picture:'assets/images/item_3.jpg',
                  restaurantName:"Dream High",
                  location:"Kathmandu",
                  wishlist: "",
                ), CommonCard(
                  name:"Burger ",
                  picture:'assets/images/item_4.jpg',
                  restaurantName:"Burger King",
                  location:"Lakeside, Pokhara",
                   wishlist: null,

                ),
                CommonCard(
                  name:"spagetti",
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