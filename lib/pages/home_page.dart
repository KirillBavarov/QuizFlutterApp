import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text('Quizz App'),
      ),
      body: Container(
        child: Center(
          child: Text('Text atribute'),
        ),
      ),
    );
  }
}