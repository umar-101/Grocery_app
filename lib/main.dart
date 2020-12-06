import 'package:flutter/material.dart';
import 'package:grocery/Screens/LoginScreen/login.dart';
import 'package:grocery/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: kPrimaryColor,
      ),
      home: LoginScreen(),
    );
  }
}
