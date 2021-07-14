import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';




//page for products
class ProductDetail extends StatefulWidget {
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail>  {
  final List<String> _tabs = <String>[
    "Featured",
    "Popular",
    "Latest",
  ];

@override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: NestedScrollView(
          
          headerSliverBuilder:
              (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverOverlapAbsorber(
                handle:
                NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                
                  sliver: SliverAppBar(
                    leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 20,
              ),
              onPressed: () {
                Navigator.pop(context);
              }
            ),
                expandedHeight: 220.0,
                floating: true,
                pinned: true,
                snap: true,
                elevation: 50,
                forceElevated: innerBoxIsScrolled,
                backgroundColor: Colors.black.withOpacity(0.3),
                flexibleSpace: FlexibleSpaceBar(
                    //centerTitle: true,
                    title:  Container(
                      color: Colors.black.withOpacity(0.25),
                      width: MediaQuery.of(context).size.width,
                      child: Text('FoodCafe - Pokhara',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          )),
                    ),
                    background: Image.asset("assets/images/item_3.jpg",
                      fit: BoxFit.cover,
                    )
                ),
                    
                  ),

                 
                ),
             
            ];
          },

          body: Padding(
            padding: const EdgeInsets.only(top:80),
            child: ListView(
                 shrinkWrap: true,
                     scrollDirection: Axis.vertical,
                    physics: ClampingScrollPhysics(),
                    //primary: false,
                children:[
                  Container(
                    color: Colors.grey,
                    height: 20,
                  ),
                  Card(
                 // elevation: 5,
                  color: Colors.grey[50],
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                  top: Radius.circular(0),
              ),
              ),
            
                 // margin: EdgeInsets.only(left: 0, right: 0, top: 220.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      
                
                DefaultTabController(
              length: _tabs.length,
                       
                child:   Column(
                  
                  children: [
                    StickyHeader(
        
            header: Container(
                            //height: MediaQuery.of(context).size.height,
                             width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(color:Colors.grey))
                              ),

                              child: TabBar(
                              isScrollable: true,
                              //indicatorPadding: EdgeInsets.only(left: 15.0 , right:100.0),
                              labelColor: Colors.purple[700],
                              indicatorColor: Colors.purple[700],
                              unselectedLabelColor: Color(0xFFa4a1a1),
                              indicatorSize: TabBarIndicatorSize.label,
                              indicatorWeight: 5,
                              /*indicator: BoxDecoration(    
                                 borderRadius: BorderRadius.circular(50),
                                 color: Colors.purple[700],
                            ),
                            */

                          /* indicator: ShapeDecoration(
                    shape: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.purple,
                            width: 4.0,
                            style: BorderStyle.solid
                            )),
                            
              ),
              */
                              
    
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                 // fontSize: 12
                              ),
                              tabs:  _tabs
                                .map((String name) => Tab(text: name))
                                .toList(), // list of tabs
                        ),
                            ),
                          
                          

                     content:   Padding(
                       padding: const EdgeInsets.only(top:10),
                       child: Container(
                          height: MediaQuery.of(context).size.height,
                          child: TabBarView(
                            physics: NeverScrollableScrollPhysics(),
                            
                            children: [
                              Container(
                                color: Colors.white24,
                                child: Text("data1")
                              ),
                              Container(
                                color: Colors.white24,
                                child: Text("data1"),
                              ), 
                                Container(
                                color: Colors.white24,
                                child: Text("data1"),
                                ),
                              
                            ],
                          ),
                        ),
                     ),
            
      
      ),
                  ],
                ),

                    
                  
                  
                ) 
                    ],
                  )),
                ]
              ),
          ),
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
