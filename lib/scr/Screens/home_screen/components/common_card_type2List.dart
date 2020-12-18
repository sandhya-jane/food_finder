import 'package:flutter/material.dart';
import 'package:food_finder/scr/Screens/home_screen/components/common_card_type2.dart';


class CardType2 extends StatelessWidget {
  final String title;

  const CardType2({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      color: Colors.blue[50],
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

                  InkWell(
                    onTap: (){},
                    child: Text("View all")),
                ],
              ),
            ),
              Container(
                 height: 250.0,
        child: ListView(
              scrollDirection: Axis.horizontal,
                    children: <Widget>[
        Product(
        name: "The Cake Shop", 
        picture: "assets/images/item_15.jpg",
         location: "NewRoad", 
        
              wishlist: null,
              ),

        Product(name: "Kathmandu Bakery", 
                 picture: "assets/images/item_19.jpg",
                  location: "Mahendrapool", 
                  
                    wishlist: "",
                    ),

        Product(name: "Healthy Tiffin Bakery",
                   picture: "assets/images/item_20.jpg",
                    location: "Bagar",
                    
                     wishlist: null,
                     ),

        Product(name:"Cake Bank" ,  
                   picture: "assets/images/item_21.jpg",
                     location: "Shrijana Chwok",
                     wishlist: "",
              ),

      Product(
      name: "German Bakery", 
      picture: "assets/images/item_22.jpg",
       location: "NewRoad",
        
         wishlist: null,
         
         ),
                    ],
        ),
        
      ),
            ],
          ),
    );
  }
}