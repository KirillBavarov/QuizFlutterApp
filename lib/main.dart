import 'package:flutter/material.dart';
import 'package:quizzflutterproject/pages/home_page.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        textTheme: TextTheme(
          caption: TextStyle(
            fontSize: 18.0,
            color: Colors.white,
          ),
        ),
        fontFamily: 'Georgia',
      ),
      home: HomePage(),
    );
  }
}


