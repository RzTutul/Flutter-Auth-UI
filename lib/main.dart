import 'package:flutter/material.dart';
import 'package:login_ui/constraints.dart';
import 'package:login_ui/screens/welcome/Welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Auth",
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white
      ),

      home: WelcomeScreen() ,
    );
  }
}

