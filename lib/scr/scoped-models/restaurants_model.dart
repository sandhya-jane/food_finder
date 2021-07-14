//import 'dart:convert';

import 'dart:convert';

import 'package:food_finder/scr/models/restaurants_model.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:http/http.dart' as http;

class RestaurantsModel extends Model{

List<Restaurants> _restaurants = [];

List<Restaurants> get restaurants{
  return List.from(_restaurants);
}

void addRestaurants(Restaurants restaurants){
  _restaurants.add(restaurants);
}

void fetchRestaurants(){
  http.get("http://192.168.0.103/food_finder/api/restaurants/getRestaurants.php/").then((http.Response response){
    //print("Fetching Data: ${response.body}");
 final List< Map<String, dynamic> > fetchedData = new List<Map<String, dynamic>>.from(json.decode(response.body));
    print(fetchedData);

//final List<Restaurants> restaurants = [];
    
   final List<Restaurants> fetchedRestaurants = [];

    fetchedData.forEach ((data) {
      Restaurants restaurants = Restaurants(

          id : data ["id"],
          name: data["name"],
          location:data["location"],
          minOrder: data["minOrder"],
          imagePath:data["imagePath"],
          type:data["type"],
        
      );
        fetchedRestaurants.add(restaurants);

     });

     _restaurants = fetchedRestaurants;
   
   print(_restaurants);
  });
  
}
}