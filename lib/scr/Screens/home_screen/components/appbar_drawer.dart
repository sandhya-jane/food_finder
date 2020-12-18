import 'package:flutter/material.dart';
import 'package:food_finder/scr/Screens/login.dart';

class AppbarDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
        child: new ListView(
          children: <Widget>[
            
            new UserAccountsDrawerHeader(accountName: Text('Sandhya Acharya'), accountEmail: Text('jane.eve01@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, color:  Colors.white,),
              ),

            ),
            ),

            

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home),
              ),
            ),

              InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person),
              ),
            ),

              InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),

              InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard),
              ),
            ),

              InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Favourites'),
                leading: Icon(Icons.favorite),
              ),
            ),

            Divider(),

              InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
              ),
            ),

              InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help,color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: (){},
             child:  Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(30.0),
          color: Color(0xFFFB415B),
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: ()=> Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new MyHomePagelogin())),
            child: Text("Login ",
                textAlign: TextAlign.center,
                ),
          ),
             
        )
            

            ),


          ],
        ),
      );
  }
}