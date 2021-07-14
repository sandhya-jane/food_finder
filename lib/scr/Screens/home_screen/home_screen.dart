

import 'package:flutter/material.dart';
import 'package:food_finder/scr/Screens/cart_screen/cart_screen.dart';
import 'package:food_finder/scr/Screens/categories_screen/categories_screen.dart';
import 'package:food_finder/scr/Screens/home_screen/components/appbar_drawer.dart';
import 'package:food_finder/scr/Screens/home_screen/components/categories.dart';
import 'package:food_finder/scr/Screens/home_screen/components/common_card_type2List.dart';
import 'package:food_finder/scr/Screens/home_screen/components/common_card_type2List1.dart';
import 'package:food_finder/scr/Screens/home_screen/components/featured_card.dart';
import 'package:food_finder/scr/Screens/home_screen/components/featured_restaurants_list.dart';
import 'package:food_finder/scr/Screens/home_screen/components/most_popular_card.dart';
import 'package:food_finder/scr/Screens/restaurants_detail_screen/restaurants_detail_screen.dart';
import 'package:food_finder/scr/scoped-models/main_model.dart';
import 'package:food_finder/scr/widgets/cart_icons.dart';
import 'package:food_finder/scr/widgets/commons.dart';
import 'package:food_finder/scr/widgets/custom_text.dart';
import 'components/image_carousel.dart';


class MyHomePage extends StatefulWidget {

  final MainModel model;

MyHomePage( {this.model});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   int _index = 0;

   //pages
   MyHomePage homePage;
   CartScreens cartScreens;
   CategoriesScreen categoriesScreen;

    List<Widget> pages;
    Widget currentPage;  

List<CategoryItem> _categoryItem = categoryItem;

 @override
 void initState(){

    widget.model.fetchRestaurants();

    cartScreens = CartScreens();
    categoriesScreen = CategoriesScreen();

    pages = [cartScreens, categoriesScreen];
    currentPage =homePage;

   super.initState();
 }

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
      
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                CartIcons.home,
              ),
              title: Text('Home', style: TextStyle())),

               BottomNavigationBarItem(
              icon: Icon(
                CartIcons.cart,
              ),
              title: Text('My Doko', style: TextStyle())),

               BottomNavigationBarItem(
              icon: Icon(
                CartIcons.favourites,
              ),
              title: Text('Favourites', style: TextStyle())),

               BottomNavigationBarItem(
              icon: Icon(
                CartIcons.account,
              ),
              title: Text('My Account', style: TextStyle()))
        ],
        selectedItemColor: Color(0xFFFB415B),
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.shifting,
        currentIndex: _index,
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
      ),
      
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

            Container(
              height: 100,
              child: ListView(
            scrollDirection: Axis.horizontal,
            children: _categoryItem.map(_buildCategories).toList(),
      
              ),
          ),

            
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


Widget _buildCategories( CategoryItem categorydetail,){
  return GestureDetector(
    onTap: (){
       Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) => CategoriesScreen(title: categorydetail.imagecaption,)
    
       ),);},
      child: Container(
      //height: 160.0,
      child: Category(
        imagecaption: categorydetail.imagecaption,      
        imagelocation: categorydetail.imagelocation,
        
      ),

    ),
  );
}
    
}


