import 'package:flutter/material.dart';
import 'package:food_finder/scr/Screens/first/cart.dart';
import 'package:food_finder/scr/Screens/first/cartdetail.dart';
class CartScreens extends StatefulWidget {
  @override
  _CartScreensState createState() => _CartScreensState();
}

class _CartScreensState extends State<CartScreens> {
  List<Cartdetail> _cartdetails = cartdetails;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       appBar:  new AppBar(
        elevation: 0.5,
        title: Text('My Baskets' , textAlign: TextAlign.center ),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search),onPressed: (){}),
          
        ],
    ),

    body:

    Column(  
      
        
       children: _cartdetails.map(_buildCart).toList(),
      ),
      
    );
  }
}

Widget _buildCart( Cartdetail cartdetail){
  return Container(
    height: 90.0,
    child: CartScreen(
      name: cartdetail.name,      
      location: cartdetail.location,
      cost: cartdetail.cost,
    ),

  );
}