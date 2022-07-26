import 'package:e_commerce/screen/my%20profile/my_profile.dart';
import 'package:flutter/material.dart';

class DrawerSide extends StatelessWidget {
  Widget listTile({required String title,required IconData icon, required Function onTap}){
    return ListTile(
      leading: Icon(
        icon,
        size: 28,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black45),
      ),
    );
  }

  const DrawerSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xffd1ad17),
        child: ListView(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white54,
                    radius: 43,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.yellow,
                      backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWXjEYhbgxMB_qdQLjyIoHGxsqqGmXk7v59A&usqp=CAU"),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Welcome Guest"),
                      SizedBox(height: 7,),
                      Container(
                        height: 30,
                        child: OutlinedButton(
                          onPressed: (){},
                          child: Text("Login",style: TextStyle(
                            color: Colors.black,
                          ),),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            listTile(
              title: "Home",
              icon: Icons.home_outlined,
              onTap: (){},
            ),
            listTile(
              title: "Review Cart",
              icon: Icons.shop_outlined,
              onTap: (){},
            ),
            InkWell(
              child: listTile(
                title: "My Profile",
                icon: Icons.person_outline,
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyProfile(),),);
                  },
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const MyProfile(),),);
              },
            ),
            listTile(
              title: "Notification",
              icon: Icons.notifications_outlined,
              onTap: (){},
            ),
            listTile(
                title: "Rating & Review",
                icon: Icons.star_outlined,
              onTap: (){},
            ),
            listTile(
              title: "Wishlist",
              icon: Icons.favorite_outline,
              onTap: (){},
            ),
            listTile(
              title: "Raise a Complaint",
              icon: Icons.text_snippet_outlined,
              onTap: (){},
            ),
            listTile(
              title: "FAQs",
              icon: Icons.sms_failed_outlined,
              onTap: (){},
            ),
            SizedBox(height: 10,),
            Container(
              // height: 100,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Contact Support",style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Call us:"),
                      SizedBox(width: 20,),
                      Text("+880100000000")
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Mail us:"),
                      SizedBox(width: 20,),
                      Text("gmail@gmail.com")
                    ],
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
