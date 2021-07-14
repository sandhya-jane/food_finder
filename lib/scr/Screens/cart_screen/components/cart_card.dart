import 'package:flutter/material.dart';
import 'package:food_finder/scr/Screens/order_screen/order_screen.dart';


class CartScreen extends StatefulWidget {

final String name;
final String location;
final String cost;



CartScreen( {@required this.name , @required this.location , @required this.cost});
  @override
  _CartScreenState createState() => _CartScreenState(name, location);
}

class _CartScreenState extends State<CartScreen> {
  final String name;
  final String location;
  _CartScreenState(this.name, this.location);


  
  @override
  Widget build(BuildContext context) {
    
    return  InkWell(
         onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new FoodOrderPage(title:name , locn:location))),
         child:Stack(
           
         children: <Widget>[
           Positioned(
             left: 0.0,
             right: 0.0,
             
               child: Container(
                 color: Colors.blueGrey[50],
               height: 80.0,
             ),
           ),


                 Padding(
                   padding: const EdgeInsets.all(12.0),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                       Text(widget.name,
                       style: TextStyle(
                         
                         fontSize: 16.0,
                           
                         )
                         ),

                       
                            Row(
                             children: <Widget>[
                              Text(widget.location,
                               style: TextStyle(
                               color: Colors.grey,
                               fontSize: 10.0,
                                  )
                               ),
                               
                             ],
                         ),
                           

                           Row(
                           children: <Widget>[
                            Text(widget.cost,
                             style: TextStyle(
                             
                             fontSize: 12.0,
                                )
                             ),
                             
                           ],
                         ),

                         
                       
                     ],
                   ),
                 ),

         ],
       ),
             
    )
    ;

    
  }
}