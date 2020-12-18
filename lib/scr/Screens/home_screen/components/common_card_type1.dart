import 'package:flutter/material.dart';

class CommonCard extends StatefulWidget {

final String name;
final String picture;
final String restaurantName;
final String location;
final String wishlist;


const CommonCard({Key key, this.name, this.picture, this.restaurantName, this.location, this.wishlist, }) : super(key: key);



  @override
  _CommonCardState createState() => _CommonCardState(name, picture, restaurantName , location , wishlist, );
}

class _CommonCardState extends State<CommonCard> {
  
final String name;
final String picture;
final String restaurantName;
final String location;
final String wishlist;


  _CommonCardState(this.name, this.picture, this.restaurantName, this.location, this.wishlist, );



  @override
  Widget build(BuildContext context) {
   return Padding(
         padding: const EdgeInsets.fromLTRB(12, 14 , 16 , 12),
         child:Container(
               height: 170.0,
               width: 170.0,
               child: InkWell(
                 onTap: (){},
                 onDoubleTap: (){
                  
                 },
                 child: Card(
                   elevation: 2,
                     clipBehavior: Clip.antiAlias,
                     shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(3.0),
                   ),

                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                       Image.asset(picture,  height: 110.0, fit: BoxFit.fill,),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Row(
                         
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: <Widget>[
                          Expanded(
                             child: Text(name, 
                            overflow: TextOverflow.clip,),
                          ),
                          Container(

                               decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(15.0),
                            color: Colors.white,
                            boxShadow: [ BoxShadow (
                            color: Colors.grey,
                            offset: Offset(1.0, 1.0),
                             blurRadius: 4.0,
                                ),

                                  ]
                             ),
                              child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child:wishlist != null ? Icon(

                          Icons.favorite , color: Color(0xFFFB415B), size: 18,):Icon(
                          Icons.favorite_border , color: Color(0xFFFB415B),size: 18,)
                              ),
                            )
                           ],
                         ),
                       ),


                     Padding(
                       padding: const EdgeInsets.only(left: 8.0),
                       child: Text(restaurantName, style: TextStyle( color: Colors.black54, fontSize: 14.0,),),
                     ),
                     SizedBox(width: 2.0,),
                     Padding(
                       padding: const EdgeInsets.only(left:8.0),
                       child: Text(location, style: TextStyle( color: Color(0xFFFB415B), fontSize: 10.0,),),
                     )

                     ],
                   ),
                 ),
               ),


             ),
             );

      }
                  
  }