import 'package:e_commerce/auth/splash_screen.dart';
import 'package:e_commerce/const/appcolor.dart';
import 'package:e_commerce/screen/home_screen/home_screen.dart';
import 'package:e_commerce/screen/review_cart/review_cart.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context){
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter E-Commerce',
          theme: ThemeData(
            primaryColor: primaryColor,
            scaffoldBackgroundColor: scaffoldBackgroundColor,
          ),
          // home:  const SplashScreen(),
          home: HomeScreen(),
        );
      },
    );
  }
}

