import 'package:e_commerce/screen/home_screen/drawer_side.dart';
import 'package:e_commerce/screen/home_screen/singal_products.dart';
import 'package:e_commerce/screen/product_overview/product_overview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd9dad1),
      drawer: DrawerSide(),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text("Home",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
        actions: [
          CircleAvatar(
            radius: 15,
            backgroundColor: Color(0xffd4d181),
            child: Icon(Icons.search,size: 20,color: Colors.black,),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Color(0xffd4d181),
              child: Icon(Icons.shopping_cart,size: 20,color: Colors.black,),
            ),
          ),
        ],
        backgroundColor: Color(0xffd6b738),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage("assets/download.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 260),
                              child: Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xffd6b738),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(50),
                                    bottomRight: Radius.circular(50),
                                  ),
                                ),
                                child: Text("  Vege",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    shadows: [
                                      Shadow(
                                        color: Colors.green,
                                        blurRadius: 20,
                                        offset: Offset(3,3),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Text("30% Off",
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    color: Colors.green,
                                    blurRadius: 30,
                                    offset: Offset(3,3),
                                  ),
                                ],
                              ),
                            ),
                            Text("On all vegetables products",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Herbs Seasonings",
                    style: TextStyle(
                      // color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("view all",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InkWell(
                    onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductOverview(
                          productImage: "assets/58bf1e2ae443f41d77c734ab.png",
                          productName: "Fresh Basil",
                        ),),);
                      },
                    child: SingalProducts(
                      productImage: "assets/58bf1e2ae443f41d77c734ab.png",
                      productName: "Fresh Basil",
                      productPrice: "10\$/100 Gram",
                      // onTap: (){
                      //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductOverview(),),);
                      // },
                      onTap: (){},
                    ),
                  ),
                  SingalProducts(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ProductOverview(
                            productImage: "assets/58ee8e023545163ec1942cd7.png",
                            productName: "Fresh Ming Leaves",
                          ),
                        ),
                      );
                    },
                    productImage: "assets/58ee8e023545163ec1942cd7.png",
                    productName: "Fresh Ming Leaves",
                    productPrice: "08\$/100 Gram",
                  ),
                  SingalProducts(
                    onTap: (){},
                    productImage: "assets/58bf1eade443f41d77c734ba.png",
                    productName: "Fresh Sage",
                    productPrice: "12\$/100 Gram",
                  ),
                  SingalProducts(
                    onTap: (){},
                    productImage: "assets/111.png",
                    productName: "Fresh Hyssop",
                    productPrice: "10\$/100 Gram",
                  ),
                  SingalProducts(
                    onTap: (){},
                    productImage: "assets/222.png",
                    productName: "Fresh Chervil",
                    productPrice: "09\$/100 Gram",
                  ),
                  SingalProducts(
                    onTap: (){},
                    productImage: "assets/333.png",
                    productName: "Fresh Sage",
                    productPrice: "12\$/100 Gram",
                  ),
                  SingalProducts(
                    onTap: (){},
                    productImage: "assets/444.png",
                    productName: "Fresh Bay Leaf",
                    productPrice: "10\$/100 Gram",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Fresh Fruits",
                    style: TextStyle(
                      // color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("view all",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SingalProducts(
                    onTap: (){},
                    productImage: "assets/555.png",
                    productName: "Fresh Oregano",
                    productPrice: "06\$/100 Gram",
                  ),
                  SingalProducts(
                    onTap: (){},
                    productImage: "assets/666.png",
                    productName: "Fresh Coriander",
                    productPrice: "08\$/100 Gram",
                  ),
                  SingalProducts(
                    onTap: (){},
                    productImage: "assets/777.png",
                    productName: "Fresh Savory",
                    productPrice: "05\$/100 Gram",
                  ),
                  SingalProducts(
                    onTap: (){},
                    productImage: "assets/888.png",
                    productName: "Fresh Rosemary",
                    productPrice: "10\$/100 Gram",
                  ),
                  SingalProducts(
                    onTap: (){},
                    productImage: "assets/999.png",
                    productName: "Fresh Hyssop",
                    productPrice: "10\$/100 Gram",
                  ),
                  SingalProducts(
                    onTap: (){},
                    productImage: "assets/100.png",
                    productName: "Fresh Mint",
                    productPrice: "12\$/100 Gram",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Fresh Fruits",
                    style: TextStyle(
                      // color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("view all",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SingalProducts(
                    onTap: (){},
                    productImage: "assets/111.png",
                    productName: "Fresh Hyssop",
                    productPrice: "08\$/100 Gram",
                  ),
                  SingalProducts(
                    onTap: (){},
                    productImage: "assets/222.png",
                    productName: "Fresh Chervil",
                    productPrice: "10\$/100 Gram",
                  ),
                  SingalProducts(
                    onTap: (){},
                    productImage: "assets/333.png",
                    productName: "Fresh Sage",
                    productPrice: "15\$/100 Gram",
                  ),
                  SingalProducts(
                    onTap: (){},
                    productImage: "assets/444.png",
                    productName: "Fresh Bay Leaf",
                    productPrice: "06\$/100 Gram",
                  ),
                  SingalProducts(
                    onTap: (){},
                    productImage: "assets/58bf1e2ae443f41d77c734ab.png",
                    productName: "Fresh Basil",
                    productPrice: "10\$/100 Gram",
                  ),
                  SingalProducts(
                    onTap: (){},
                    productImage: "assets/58ee8e023545163ec1942cd7.png",
                    productName: "Fresh Ming Leaves",
                    productPrice: "05\$/100 Gram",
                  ),
                  SingalProducts(
                    onTap: (){},
                    productImage: "assets/58bf1eade443f41d77c734ba.png",
                    productName: "Fresh Sage",
                    productPrice: "10\$/100 Gram",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Fresh Fruits",
                    style: TextStyle(
                      // color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("view all",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SingalProducts(
                    onTap: (){},
                    productImage: "assets/555.png",
                    productName: "Fresh Oregano",
                    productPrice: "12\$/100 Gram",
                  ),
                  SingalProducts(
                    onTap: (){},
                    productImage: "assets/999.png",
                    productName: "Fresh Hyssop",
                    productPrice: "10\$/100 Gram",
                  ),
                  SingalProducts(
                    onTap: (){},
                    productImage: "assets/100.png",
                    productName: "Fresh Mint",
                    productPrice: "06\$/100 Gram",
                  ),
                  SingalProducts(
                    onTap: (){},
                    productImage: "assets/666.png",
                    productName: "Fresh Coriander",
                    productPrice: "20\$/100 Gram",
                  ),
                  SingalProducts(
                    onTap: (){},
                    productImage: "assets/777.png",
                    productName: "Fresh Savory",
                    productPrice: "10\$/100 Gram",
                  ),
                  SingalProducts(
                    onTap: (){},
                    productImage: "assets/888.png",
                    productName: "Fresh Rosemary",
                    productPrice: "08\$/100 Gram",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

