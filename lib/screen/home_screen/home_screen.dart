import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  Widget singalProducts(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 7),
      height: 230,
      width: 170,
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.all(Radius.circular(10),),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Image(
              image: AssetImage("assets/58bf1e2ae443f41d77c734ab.png"),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Fresh Basil",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("10\$/100 Gram"),
                  SizedBox(height: 7,),
                  Row(
                    children: [
                      Expanded(
                        // flex:2,
                        child: Container(
                          width: 50,
                          height: 20,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey,),
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                          ),
                          child: Row(
                            children: [
                              Text(" 100 Gram",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                              Icon(Icons.arrow_drop_down,size: 12,color: Color(0xffd0b84c),),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),
                      Expanded(
                        child: Container(
                          width: 50,
                          height: 20,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey,),
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.remove,size: 12,color: Color(0xffd0b84c),),
                              Text(" 1 ",
                                style: TextStyle(
                                  color: Color(0xffd0b84c),
                                  fontSize: 12,
                                ),
                              ),
                              Icon(Icons.add,size: 12,color: Color(0xffd0b84c),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd9dad1),
      drawer: Drawer(),
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
                  image: NetworkImage("data:image/jpeg;base64,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"),
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
                              padding: const EdgeInsets.only(right: 435),
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
                                child: Text("Vege",
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
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
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
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

