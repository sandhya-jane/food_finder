import 'package:flutter/material.dart';




//page for products
class ProductDetail extends StatefulWidget {
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar:  new AppBar(
        elevation: 0.5,
        title: Text('FoodFinder'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search),onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart),onPressed: (){}),
        ],
      ),  

      body:new ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            color:Colors.black12,
          )
        ],

      )
    );
  }
}


//page for search
class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: (SafeArea( child: ListView(
        children: <Widget>[

     

        
    
        SizedBox(height: 5.0) , // for search box
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [ BoxShadow (
                color: Colors.grey,
                offset: Offset(1.0, 1.0),
                blurRadius: 4.0,
              ),
              ],
            ),
            child: ListTile(
              leading: Icon(Icons.search,color: Colors.red,),
              title: TextField(
                decoration: InputDecoration(
                  hintText: "Find Food and Restaurants",
                  border: InputBorder.none,
                ),
              ),
              trailing: Icon(Icons.filter_list,color: Colors.red,),
            ),
          ),
        ),
        ], 
      ),
      )
    )
    );
  }
}

class Restaurants extends StatefulWidget {
  @override
  _RestaurantsState createState() => _RestaurantsState();
}

class _RestaurantsState extends State<Restaurants> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}