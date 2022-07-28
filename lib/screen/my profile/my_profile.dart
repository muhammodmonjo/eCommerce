import 'package:e_commerce/const/appcolor.dart';
import 'package:e_commerce/screen/home_screen/drawer_side.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  Widget listTile({required IconData icon, required String title}){
    return Column(
      children: [
        Divider(
          height: 1,
        ),
        ListTile(
          leading: Icon(icon),
          title: Text(title),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      drawer: DrawerSide(),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: primaryColor,
        title: Text("My Profile",
          style: TextStyle(
            fontSize: 18,
            color: textColor,
          ),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 100,
                color: primaryColor,
              ),
              Container(
                height: 573,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                decoration: BoxDecoration(
                  color: scaffoldBackgroundColor,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30),),
                ),
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 230,
                          height: 80,
                          padding: EdgeInsets.only(left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Muhammod Monjo",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: textColor,
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text("muhammodmonjo@gmail.com"),
                                ],
                              ),
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: primaryColor,
                                child: CircleAvatar(
                                  radius: 7,
                                  child: Icon(Icons.edit,color: primaryColor,size: 13,),
                                  backgroundColor: scaffoldBackgroundColor,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    listTile(
                      icon: Icons.shop_outlined,
                      title: "My Orders"
                    ),
                    listTile(
                        icon: Icons.location_on_outlined,
                        title: "My Delivery Address"
                    ),
                    listTile(
                        icon: Icons.person_outline,
                        title: "Refer A Friends"
                    ),
                    listTile(
                        icon: Icons.file_copy_outlined,
                        title: "Terms & Conditions"
                    ),
                    listTile(
                        icon: Icons.policy_outlined,
                        title: "Privacy Policy"
                    ),
                    listTile(
                        icon: Icons.add_chart,
                        title: "About"
                    ),
                    listTile(
                        icon: Icons.exit_to_app_outlined,
                        title: "Log Out"
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 30),
            child: CircleAvatar(
              radius: 50,
              backgroundColor: primaryColor,
              child: CircleAvatar(
                radius: 45,
                backgroundColor: scaffoldBackgroundColor,
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWXjEYhbgxMB_qdQLjyIoHGxsqqGmXk7v59A&usqp=CAU"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
