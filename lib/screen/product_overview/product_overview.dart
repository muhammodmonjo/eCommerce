import 'package:e_commerce/const/appcolor.dart';
import 'package:e_commerce/screen/home_screen/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum SinginCharacter {fill, outline}

class ProductOverview extends StatefulWidget {

  final String productName;
  final String productImage;

  const ProductOverview({super.key, required this.productName, required this.productImage});

  @override
  _ProductOverviewState createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {

  SinginCharacter _character = SinginCharacter.fill;


Widget bottomNavigationBar({
  required Color iconColor,
  required Color color,
  required Color backgroundColor,
  required String title,
  required IconData iconData,
}) {
  return Expanded(
    child: Container(
      padding: EdgeInsets.all(20),
      color: backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(iconData,size: 17,color: iconColor,),
          SizedBox(width: 5,),
          Text(title, style: TextStyle(color: color),)
        ],
      ),
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          bottomNavigationBar(
            backgroundColor: textColor,
            color: Colors.white70,
            iconColor: Colors.grey,
            title: "Add to wishList",
            iconData: Icons.favorite_outline,
          ),
          bottomNavigationBar(
            backgroundColor: primaryColor,
            color: textColor,
            iconColor: textColor,
            title: "Go to Cart",
            iconData: Icons.shopping_cart,
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: primaryColor,
        iconTheme: IconThemeData(color: textColor),
        title: Text("Product Overview",
          style: TextStyle(color: textColor),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  ListTile(
                    title: Text(widget.productName),
                    subtitle: Text("\$10"),
                  ),
                  Container(
                    height: 250,
                    padding: EdgeInsets.all(40),
                    child: Image.asset(widget.productImage),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    child: Text("Available Optios",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 3,
                              backgroundColor: Colors.green[700],

                            ),
                            Radio(
                              value: SinginCharacter.fill,
                              groupValue: _character,
                              activeColor: Colors.green[700],
                              onChanged: (value){
                                setState(() {
                                  var _character = value;
                                });
                              },
                            ),
                          ],
                        ),
                        Text("\$10"),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.add,size: 17,color: primaryColor,),
                              Text("ADD",
                                style: TextStyle(
                                  color: primaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("About This Product",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("In marketing, a product is an object, or system, or service made available for consumer use as of the consumer demand; it is anything that can be offered to a market to satisfy the desire or need of a customer.",
                    style: TextStyle(
                      fontSize: 16,
                      color: textColor
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
