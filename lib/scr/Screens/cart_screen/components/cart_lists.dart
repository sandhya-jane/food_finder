import 'package:flutter/cupertino.dart';

class Cartdetail{
final String name;
final String location;
final String cost;



Cartdetail( {@required this.name , @required this.location , @required this.cost});
}

final cartdetails =[
Cartdetail(
  name: "Foodcafe",
  location: "Newroad",
  cost: "Rs850"
),

Cartdetail(
  name: "Third Eye Restro",
  location: "Newroad",
  cost: "Rs1050"
),


];