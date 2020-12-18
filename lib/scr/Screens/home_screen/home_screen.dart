

import 'package:flutter/material.dart';
import 'package:food_finder/scr/Screens/home_screen/components/appbar_drawer.dart';
import 'package:food_finder/scr/Screens/home_screen/components/common_card_type2List.dart';
import 'package:food_finder/scr/Screens/home_screen/components/common_card_type2List1.dart';
import 'package:food_finder/scr/Screens/home_screen/components/featured_card.dart';
import 'package:food_finder/scr/Screens/home_screen/components/categories.dart';
import 'package:food_finder/scr/Screens/home_screen/components/featured_restaurants_list.dart';
import 'package:food_finder/scr/Screens/home_screen/components/most_popular_card.dart';
import 'package:food_finder/scr/Screens/carts.dart';
import 'package:food_finder/scr/widgets/commons.dart';
import 'package:food_finder/scr/widgets/custom_text.dart';
import '../first/page.dart';
import 'components/image_carousel.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    
  
    return Scaffold(
      backgroundColor: white,
      
      appBar: new AppBar(
        elevation: 0.5,
        title: Text('FoodFinder'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search),onPressed: ()=> Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new Search())),),
          Stack(
                  children: <Widget>[
                    IconButton( icon: Icon( Icons.notifications_none), onPressed: (){}), // for notification icon
                  Positioned(
                    top: 12.0,
                    right: 12.0,

                        child: Container( // for number of notificatons
                        height: 10.0,
                        width: 10.0,
                        decoration: BoxDecoration(
                          color: red,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    )
                  ],
                ),
             
            
        new IconButton(icon: Icon(Icons.shopping_cart),onPressed: ()=> Navigator.of(context).push(new MaterialPageRoute(builder: (context) => CartScreens() ),
          ),
         
          )
        ],
      ),
      
      drawer: AppbarDrawer(),
      
      
      
      body: SafeArea(
        
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: ListView(
              shrinkWrap: true,
                     scrollDirection: Axis.vertical,
                     physics: ClampingScrollPhysics(),
          
          children: <Widget>[
            
            ImageCarousel(),

             Padding (
               padding: const EdgeInsets.all(8.0),
                child: CustomText(text:"Categories"),

            ),

            Categories(),

            
      CardType2List(title: "Fresh And Organic",),

          
          CardList(title: "Featured"),
          Divider(),
          MostPopular(title: "Most Popular",),
          Divider(),
          CardList(title: "Best Offers"),
          

          


          CardType2(title: "Cake It Away"),
          



         

          
      FeaturedRestaurantList(title: "Featured Restaurants",),

          SizedBox(height: 20.0, width: 5.0,),

          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.center,
                
                children: <Widget>[
                        InkWell(
                        onTap: () {},
                        child: Text(
                          "View all Restaurants",

                          style: TextStyle(
                            color: Color(0xFFFB415B),
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                  ]
                ),
          ),
       ],


      ),
        )

      
    ),
    );
    
  }
    
}

