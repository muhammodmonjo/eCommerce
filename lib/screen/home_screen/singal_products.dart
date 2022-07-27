import 'package:flutter/material.dart';

class SingalProducts extends StatelessWidget {
  final String productImage;
  final String productName;
  final String productPrice;
  final Function onTap;

  SingalProducts({required this.productImage, required this.productName, required this.productPrice, required this.onTap});

  // const SingalProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 7),
            height: 230,
            width: 170,
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Image(
                    image: AssetImage(
                      productImage,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          productName,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(productPrice),
                        SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: [
                            Expanded(
                              // flex:2,
                              child: Container(
                                width: 50,
                                height: 20,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6)),
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      " 100 Gram",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down,
                                      size: 12,
                                      color: Color(0xffd0b84c),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Container(
                                width: 50,
                                height: 20,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6)),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.remove,
                                      size: 12,
                                      color: Color(0xffd0b84c),
                                    ),
                                    Text(
                                      " 1 ",
                                      style: TextStyle(
                                        color: Color(0xffd0b84c),
                                        fontSize: 12,
                                      ),
                                    ),
                                    Icon(
                                      Icons.add,
                                      size: 12,
                                      color: Color(0xffd0b84c),
                                    ),
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
          ),
        ],
      ),
    );
  }
}
