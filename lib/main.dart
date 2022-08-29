import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/landing.page.dart';
import 'package:flutter_application_1/pages/login.page.dart';
import 'package:flutter_application_1/pages/profile.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        dividerColor: Colors.black,
      ),
      // home: HomePage(),
      // home: LandingPage(),
      //home: LoginPage(),
      home: ProfilePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Holder {
  static String userName = 'BF';

  static void message() {
    debugPrint('You are Calling Static Method');
  }
}
