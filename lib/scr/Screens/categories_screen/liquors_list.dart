import 'package:flutter/cupertino.dart';
class LiquorsList{
final String liquorName;
final String location;
final String logo;



LiquorsList( {@required this.liquorName , @required this.location , @required this.logo});
}

final liquorsList = [
LiquorsList(
                  liquorName: "Hotel liquor",
                  location: "Lakeside, Pokhara",
                  logo: "assets/images/logo.png",

                ),
               LiquorsList(
                  liquorName: "Hotel La",
                  location: "Lakeside, Pokhara",
                  logo: "assets/images/logo.png",

                ),

                LiquorsList(
                  liquorName: "Hotel lak",
                  location: "Lakeside, Pokhara",
                  logo: "assets/images/logo.png",

                ),

                LiquorsList(
                  liquorName: "Hotel liquor",
                  location: "Lakeside, Pokhara",
                  logo: "assets/images/logo.png",

                ),

];
