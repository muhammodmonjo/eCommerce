import 'package:e_commerce/const/appcolor.dart';
import 'package:e_commerce/widgets/single_item.dart';
import 'package:flutter/material.dart';

class ReviewCart extends StatelessWidget {
  const ReviewCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ListTile(
        title: Text("Total Aount"),
        subtitle: Text("\$ 135.00",style: TextStyle(color: Colors.grey),),
        leading: Container(
          width: 160,
          child: MaterialButton(
            onPressed: (){},
            child: Text("Submit"),
            color: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text("Review Cart",
          style: TextStyle(
            color: textColor,
            fontSize: 18,
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 10,),
          SingleItem(isBool: true,),
          SingleItem(isBool: true,),
          SingleItem(isBool: true,),
          SingleItem(isBool: true,),
          SingleItem(isBool: true,),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}
