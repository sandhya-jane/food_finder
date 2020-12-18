import 'package:flutter/material.dart';
class CategoriesList extends StatefulWidget {
  final String appbarName;
  final String restaurantName;
  final String location;
  final String logo;

  const CategoriesList({Key key, this.appbarName, this.restaurantName, this.location, this.logo}) : super(key: key);
  @override
  _CategoriesListState createState() => _CategoriesListState(appbarName, restaurantName, location, logo);
}

class _CategoriesListState extends State<CategoriesList> {
final String appbarName;
  final String restaurantName;
  final String location;
  final String logo;

  _CategoriesListState(this.appbarName, this.restaurantName, this.location, this.logo);


  @override
  Widget build(BuildContext context) {

   return  Padding(
       padding: const EdgeInsets.all(8.0),
       child: InkWell(
          onTap: () {
            
          // Navigator.of(context).push(new MaterialPageRoute(
         //builder: (context) => FoodDetailsPage(),));
          
          },
           
          child: Container(
           
            height: 120.0,
            decoration: BoxDecoration(
           color: Colors.blueGrey[50],
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color:Colors.pink)

            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        children: <Widget>[
                          Image.asset(logo, height: 60,),
                          VerticalDivider(),
                          Expanded(
                                 child: Column(
                                   children: <Widget>[
                                     Text(restaurantName,                                    
                                      style: TextStyle(
                                      fontSize: 18.0, fontWeight: FontWeight.w400)),

                                      Text(location,                                    
                                      style: TextStyle(
                                      fontSize: 16.0, fontWeight: FontWeight.w400)),


                                   ],
                                 ),
                          ),
                        ],
                      ),
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





/*
    return Scaffold(
      

       appBar:  new AppBar(
        elevation: 0.5,
        title: Text('Restaurants' , textAlign: TextAlign.center ),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search),onPressed: (){}),
          
        ],
    ),

    body:

    Column(  
      
        
       children: _restaurantlists.map(_buildRest).toList(),
      ),
      
    );
  }
}

Widget _buildRest( Restaurantdetail restaurantdetail){
  return Container(
    height: 90.0,
    child: Restaurant(
      name: restaurantdetail.name,      
      location: restaurantdetail.location,
      picture: restaurantdetail.picture,
    ),

  );
}
*/