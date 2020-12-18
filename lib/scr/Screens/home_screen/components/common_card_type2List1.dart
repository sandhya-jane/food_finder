import 'package:flutter/material.dart';
import 'package:food_finder/scr/Screens/home_screen/components/common_card_type2.dart';


class CardType2List extends StatelessWidget {
  final String title;

  const CardType2List({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      color: Colors.green[50],
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
        name: "Fresh Sabji Mandi", 
        picture: "assets/images/item_4.jpg",
         location: "NewRoad", 
        
              wishlist: null,
              ),

        Product(name: "Sristijan farm", 
                 picture: "assets/images/item_5.jpg",
                  location: "Mahendrapool", 
                  
                    wishlist: "",
                    ),

        Product(name: "Harilo Pasal",
                   picture: "assets/images/item_6.jpg",
                    location: "Bagar",
                    
                     wishlist: null,
                     ),

        Product(name:"Doko Mart" ,  
                   picture: "assets/images/item_7.jpg",
                     location: "Shrijana Chwok",
                     wishlist: "",
              ),

      Product(
      name: "Pokhreli farm", 
      picture: "assets/images/item_4.jpg",
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