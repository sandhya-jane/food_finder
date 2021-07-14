import 'package:flutter/material.dart';
import 'package:food_finder/scr/Screens/restaurants_detail_screen/restaurants_detail_screen.dart';
//import 'package:food_finder/scr/Screens/first/page.dart';
import 'package:food_finder/scr/widgets/commons.dart';





class Product extends StatefulWidget {

final String name;
final String picture;
final String location;
final String wishlist;

  const Product({Key key, this.name, this.picture, this.location, this.wishlist}) : super(key: key);
  @override
  _ProductState createState() => _ProductState(name,picture,location,wishlist);
}

class _ProductState extends State<Product> {
final String name;
final String picture;
final String location;
final String wishlist;

  _ProductState(this.name, this.picture,  this.location, this.wishlist);

  @override
  Widget build(BuildContext context) {
    return Padding(
         padding: const EdgeInsets.fromLTRB(12, 14 , 16 , 12),
         child:InkWell(
           onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new ProductDetail())),
         
         child: Container(
               height: 280.0,
               width: 200.0,
               decoration: BoxDecoration(
             color: Colors.grey[50],
             boxShadow: [ BoxShadow (
               color: grey,
               offset: Offset(10.0, 5.0),
               blurRadius: 4.0,
             ),
            
             ]
             ),
               child: Column(
                 children: <Widget>[
                   Image.asset(picture,  height: 140.0, width:150, fit: BoxFit.fill,),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: <Widget>[
                         Expanded(child: Text(
                           
                           name,
                           overflow: TextOverflow.clip,
                            )),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Container(
                             
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                 color: white,
                                 boxShadow: [ BoxShadow (
                                 color: grey,
                                 offset: Offset(1.0, 1.0),
                                  blurRadius: 4.0,
             ),
            
             ]
             ),
                             child: Padding(
                               padding: const EdgeInsets.all(4.0),
                               child: wishlist != null ? Icon(
                                 
                               Icons.favorite , color: red, size: 18,):Icon(
                               Icons.favorite_border , color: red, size: 18,)
                             ),
                           ),
                         )
                       ],
                     ),
                   ),

                 
                 Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: <Widget>[

                     Padding(
                       padding: const EdgeInsets.only(
                        right: 8.0),
                       child: Text(location, style: TextStyle(fontSize:12),),
                     ),
                   ],
                 )

                 ],
               ),


             )
         )     );

      }
              
    
      
  }




