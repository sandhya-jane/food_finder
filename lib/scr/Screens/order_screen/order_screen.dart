import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:food_finder/scr/Screens/order_screen/order_card.dart';

class FoodOrderPage extends StatefulWidget {

  final String title;
  final String locn;

  const FoodOrderPage({Key key, this.title, this.locn}) : super(key: key);

  @override
  _FoodOrderPageState createState() => _FoodOrderPageState(title, locn);
}

class _FoodOrderPageState extends State<FoodOrderPage> {
  int counter = 3;

  final String title;
  final String locn;

  _FoodOrderPageState(this.title, this.locn);

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFAFAFA),
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF3a3737),
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title:Center (
          child:Text(
              "My Basket",
              style: TextStyle(
                  color: Color(0xFF3a3737),
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
          brightness: Brightness.light,
          
          
         actions:<Widget>[IconButton(
           onPressed: (){},
           color: Colors.black,
           icon: Icon( Icons.remove_shopping_cart),
          )
         ],
          ),

          
          
        
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 5),
                  
                  child: Row(
                  children:<Widget>[
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.left,
                  ),
                 
                  ],

                
                  ), 

                  
                ),

                 Padding(
                   padding: const EdgeInsets.only(left:5.0),
                   child: Row(
                      children: <Widget>[
                        Text(locn,
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF3a3a3b),
                          fontWeight: FontWeight.w300),
                      textAlign: TextAlign.left,
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(150, 0, 5, 0),
                          child: Column(
                            children: <Widget>[
                            Text("Min Order:Rs.500",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF3a3a3b),
                            fontWeight: FontWeight.w300),
                      textAlign: TextAlign.right,
                          ),
                            ],
                          ),
                        )
                      ],
                    ),
                 ),

               
                Padding(
                  padding: const EdgeInsets.fromLTRB(5.0,0.0,5.0,0.0),
                  child: Container(
                      height: 60.0,
                      color: Colors.grey[10],
                      child: Row(
                        children: <Widget>[
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top:18.0),
                                  child: Text("ITEMS",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.red,
                                      
                                    ),
                                  ),
                                )
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left:100.0),
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(top:18.0),
                                    child: Text("ADD MORE ITEMS +",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.green,
                                        
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )

                        ],
                      ),
                  ),
                ),

                
                CartItem(
                    productName: "Fries",
                    productPrice: "\Rs.240",
                    //productImage: "assets/images/a.jpg",
                    productCartQuantity: "Quantity:2"),
                SizedBox(
                  height: 10,
                ),
                CartItem(
                    productName: "Burger",
                    productPrice: "\Rs.500",
                    //productImage: "assets/images/b.jpg",
                    productCartQuantity: "Quantity:2"),
                /*SizedBox(
                  height: 10,
                ),
                */
                //PromoCodeWidget(),
                SizedBox(
                  height: 10,
                ),
                TotalCalculationWidget(),
                
            SizedBox(
            height: 20.0,
            
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 50.0,
              decoration: BoxDecoration(
               
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(35.0),
              ),
              
              child: Center(
                child: Text(
                  "CONTINUE",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
                //PaymentMethodWidget(),
              ],
            ),
          ),
        ));
  }
}

class PaymentMethodWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color(0xFFfae3e2).withOpacity(0.1),
          spreadRadius: 1,
          blurRadius: 1,
          offset: Offset(0, 1),
        ),
      ]),
      child: Card(
        color: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 10, right: 30, top: 10, bottom: 10),
          child: Row(
            children: <Widget>[
             /* Container(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/c.jpg",
                  width: 50,
                  height: 50,
                ),
              ),
              */
              Text(
                "fonePay/eSewa/Cash on Delivery",
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF3a3a3b),
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.left,
              ),

            
               
            ],
          ),

          
        ),
      
      ),
    
    );

    
  }
}

class TotalCalculationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 150.0,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color(0xFFfae3e2).withOpacity(0.1),
          spreadRadius: 1,
          blurRadius: 1,
          offset: Offset(0, 1),
        ),
      ]),
      child: Card(
        color: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 25, right: 30, top: 10, bottom: 10),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "SUB TOTAL",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "\Rs.740.00",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "DELIVERY CHARGE",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "\Rs.110",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.left,
                  )
                ],
              ),

              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "GRAND TOTAL",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "\Rs850",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*class PromoCodeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(left: 3, right: 3),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Color(0xFFfae3e2).withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 1),
          ),
        ]),
  
      ),
    );
  }
}
*/



/*class CartIconWithBadge extends StatelessWidget {
 final int counter = 3;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        IconButton(
            icon: Icon(
              Icons.business_center,
              color: Color(0xFF3a3737),
            ),
            onPressed: () {}),
        counter != 0
            ? Positioned(
                right: 11,
                top: 11,
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  constraints: BoxConstraints(
                    minWidth: 14,
                    minHeight: 14,
                  ),
                  child: Text(
                    '$counter',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 8,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            : Container()
      ],
    );
  }
}
*/

/*class AddToCartMenu extends StatelessWidget {
  final int productCounter;

  AddToCartMenu(this.productCounter);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.remove),
            color: Colors.black,
            iconSize: 18,
          ),
          InkWell(
            onTap: () => print('hello'),
            child: Container(
              width: 100.0,
              height: 35.0,
              decoration: BoxDecoration(
                color: Color(0xFFfd2c2c),
                border: Border.all(color: Colors.white, width: 2.0),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Center(
                child: Text(
                  'Add To $productCounter',
                  style: new TextStyle(
                      fontSize: 12.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w300),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
            color: Color(0xFFfd2c2c),
            iconSize: 18,
          ),
        ],
      ),
    );
  }
}
*/
