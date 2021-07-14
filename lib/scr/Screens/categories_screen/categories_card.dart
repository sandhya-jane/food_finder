import 'package:flutter/material.dart';
class CategoriesCard extends StatefulWidget {
  //final String appbarName;
  final String restaurantName;
  final String location;
  final String logo;

  

  const CategoriesCard({Key key,  this.restaurantName, this.location, this.logo}) : super(key: key);
  @override
  _CategoriesCardState createState() => _CategoriesCardState( restaurantName, location, logo);
}

class _CategoriesCardState extends State<CategoriesCard> {
//final String appbarName;
  final String restaurantName;
  final String location;
  final String logo;

  _CategoriesCardState( this.restaurantName, this.location, this.logo);


  @override
  Widget build(BuildContext context) {

   return  Padding(
       padding: const EdgeInsets.all(8.0),
       child: Container(
        
         height: 120.0,
         decoration: BoxDecoration(
        color: Colors.blueGrey[50],
           borderRadius: BorderRadius.circular(20),
           border: Border.all(color:Colors.pink)

         ),
         child: Padding(
           padding: const EdgeInsets.all(12.0),
           child: Padding(
               padding: const EdgeInsets.all(4.0),
               child: Row(
                 mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   Card(
                                           child: Container(
                       height: 100,
                       width: 60,
                       child: Image.asset(widget.logo,)),
                   ),
                   VerticalDivider(),
                   Expanded(
                          child: Column(
                            children: <Widget>[
                              Text(widget.restaurantName.toString(),                                    
                               style: TextStyle(
                               fontSize: 18.0, fontWeight: FontWeight.w400)),

                               Text(widget.location.toString(),                                    
                               style: TextStyle(
                               fontSize: 16.0, fontWeight: FontWeight.w400)),


                             
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