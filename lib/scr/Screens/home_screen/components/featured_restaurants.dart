import 'package:flutter/material.dart';

class FeaturedRestaurant extends StatefulWidget {
final String name;
final String picture;
final String type;
final String location;
final String logo;

FeaturedRestaurant( {@required this.name ,@required  this.picture , @required this.type , @required this.location , @required this.logo});

  @override
  _FeaturedRestaurantState createState() => _FeaturedRestaurantState(name,picture,type,location,logo);
}

class _FeaturedRestaurantState extends State<FeaturedRestaurant> {

  final String name;
  final String picture;
  final String type;
  final String location;
  final String logo;

  _FeaturedRestaurantState(this.name, this.picture, this.type, this.location, this.logo);

  

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
                  height: 230.0,
                    width: 360.0,
        child: Card(
                       elevation: 2,
                         clipBehavior: Clip.antiAlias,
                         shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(10),
                       ),
              child: InkWell(
                onTap: (){},
              
            child:  Stack(
              children: <Widget>[
                
                Container(
                   height: 230.0,
                    width: 360.0,
                  child: Image.asset(picture, fit: BoxFit.cover)),

                Positioned(
                  left: 0.0,
                  right: 0.0,
                  bottom: 0.0,
                    child: Container(
                    height: 70.0,
                    width: 360.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                         Colors.black, Colors.black12,
                        ],
                        begin: Alignment.bottomCenter,
                        end:Alignment.topCenter,
                      )
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  bottom: 0,
                     child: Row(
                       mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                       children: <Widget>[
                         Container(
                           height: 60.0,
                           width: 60.0,

                     child: Image.asset(logo),
                         ),
                       ], 
                         

                      ),
                      
                      VerticalDivider(),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(name,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,  
                            )
                            ),

                          
                               Row(
                                children: <Widget>[
                                 Text(type,
                                  style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 13.0,
                                     )
                                  ),
                                  
                                ],
                            ),
                              

                              Row(
                              children: <Widget>[
                               Text(location,
                                style: TextStyle(
                                color: Colors.white38,
                                fontSize: 12.0,
                                   )
                                ),
                                
                              ],
                            ),

                            
                          
                        ],
                      )
                    ],
                  ),
                ),

              ],
              
            ),
                

        ),
        ),
      ),
    );
  }
}



