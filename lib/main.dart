import 'package:facebook/homePage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Facebook",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.blue,
        ),
        // accentIconTheme: 
      ),
    );
  }
}