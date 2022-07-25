import 'package:e_commerce/screen/home_screen/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  Future<User?>_googleSignUp() async {
    try {
      final GoogleSignIn _googleSignIn = GoogleSignIn(
        scopes: ['email'],
      );
      final FirebaseAuth _auth = FirebaseAuth.instance;

      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      final User? user = (await _auth.signInWithCredential(credential)).user;
      // print("signed in " + user.displayName);

      return user;
    } catch (e) {
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300.h,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text("Sign in to contunue"),
                      Text("eCommerce",
                        style: TextStyle(
                          fontSize: 50.sp,
                          color: Colors.white,
                          shadows: [
                            BoxShadow(
                              blurRadius: 5.r,
                              color: Colors.green.shade900,
                              offset: Offset(3,3),
                            ),
                          ]
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Column(
                    children: [
                      SignInButton(
                        Buttons.Google,
                        text: "Sign in whit Google",
                        onPressed: () {
                          _googleSignUp().then(
                                  (value) => Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(builder: (context) => HomeScreen(),
                                    ),
                                  ),
                          );
                        },
                        // padding: EdgeInsets.symmetric(horizontal: 17),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      SignInButton(
                        Buttons.Email,
                        text: "Sign in whit Email",
                        onPressed: () {},
                        // padding: EdgeInsets.all(17),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Column(
                    children: [
                      Text("By signinn in are agreeing to our",
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text("Terms and Pricacy Policy ",
                        style: TextStyle(
                          color: Colors.grey[800],
                        ),
                      ),
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
