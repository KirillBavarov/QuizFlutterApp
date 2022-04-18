import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  Answer ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 50.0,
        vertical: 5.0,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(
          color: Colors.black,
          blurRadius: 10.0,
          offset: Offset(1.0, 1.0),
        ),
        ],
        borderRadius: BorderRadius.circular(30.0),
        gradient: LinearGradient (
          colors: [
            Color(0xFF55337ff),
            Color(0xFF8131ff),
            Color(0xFFbd27ff),
          ]
        ),
      ),
      child: Text('answer',
      textAlign: TextAlign.center,
      ),

    );
  }
}