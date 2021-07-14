import 'package:flutter/material.dart';
import 'package:food_finder/scr/Screens/categories_screen/categories_card.dart';
import 'package:food_finder/scr/Screens/categories_screen/liquors_list.dart';
//import 'package:food_finder/scr/Screens/categories_screen/restaurants_list.dart';
import 'package:food_finder/scr/models/restaurants_model.dart';
import 'package:food_finder/scr/scoped-models/main_model.dart';
import 'package:scoped_model/scoped_model.dart';

class CategoriesScreen extends StatefulWidget {

final String  title ;

final Restaurants restaurants;

 final MainModel model;



const CategoriesScreen( { Key key, this.title, this.restaurants, this.model} ) : super(key: key);

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState(title);
}

class _CategoriesScreenState extends State<CategoriesScreen> {

  final String title;
 

  _CategoriesScreenState(this.title);

  //List<RestaurantsList> _restaurantsList = restaurantsList;

  List<LiquorsList> _liquorsList = liquorsList;

@override
  void initState() {

  //  widget.model.fetchRestaurants();

    super.initState();
  }



  @override
  Widget build(BuildContext context) {



    return Scaffold(

       appBar:  new AppBar(
        elevation: 0.5,
        title: Text(widget.title , textAlign: TextAlign.center ),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search),onPressed: (){}),
          
        ],
    ),


        body:    
    

    ScopedModelDescendant<MainModel>(
            builder: (BuildContext context, Widget child, MainModel model) {
       return ListView(
          scrollDirection: Axis.vertical,
          children: (title== "Restaurants" )? model.restaurants.map(_buildRestaurant).toList(): _liquorsList.map(_buildliquor).toList(),
      
          
        );
            })

            
    
    );
  }
}

Widget _buildRestaurant( Restaurants restaurants)
{
  return InkWell(
    onTap: (){},
      child: Container(
      //height: 160.0,
      child: CategoriesCard(
        restaurantName: restaurants.name,      
        location: restaurants.location,
        logo: "assets/images/logo.png",

      
      ),
      
    ),
  );
}


Widget _buildliquor( LiquorsList liquordetail){
  return InkWell(
    onTap: (){ print("object");},
      child: Container(
      //height: 160.0,
      child: CategoriesCard(
        restaurantName: liquordetail.liquorName,      
        location: liquordetail.location,
        logo: liquordetail.logo,
      ),

    ),
  );
}