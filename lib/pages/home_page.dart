import 'package:flutter/material.dart';
import 'package:quizzflutterproject/models/qeustion.dart';
import 'package:quizzflutterproject/widgets/answers.dart';
import 'package:quizzflutterproject/widgets/progress_bar.dart';
import 'package:quizzflutterproject/widgets/quizz.dart';
import 'package:quizzflutterproject/widgets/result_quizz.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final QuestionData data = QuestionData();
  int _countResult = 0;
  int _questionIndex = 0;

  List<Icon> _icons = [];

  void _clearState() => setState(() {
    _questionIndex = 0;
    _countResult = 0;
    _icons = [];
  });

  void _onChangeAnswer(bool isCorrect) => setState(() { 
    if (isCorrect) {
      _icons.add(Icon(Icons.brightness_1, color: Colors.lightGreen));
      _countResult++;
    } else {
      _icons.add(Icon(Icons.brightness_1, color: Colors.pink));
    }

    _questionIndex +=1;
  });

  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text('Quizz App'),
      ),
      body: Container (
        constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        image: DecorationImage (
          image: Image.network('https://i.pinimg.com/originals/4a/43/3e/4a433e8f8ddbf6e34ebad1612cd5c788.jpg').image,
          fit: BoxFit.cover,
        )
      ),
      child: Column (
        children: <Widget> [

          ProgressBar(
            icons: _icons,
            count: _questionIndex,
            total: data.questions.length,
          ),

          _questionIndex < data.questions.length
          ? Quiz(
            index: _questionIndex,
            qustionData: data,
            onChangeAnswer: _onChangeAnswer,
          )
              : Result(
              count: _countResult,
              total: data.questions.length,
              onClearState: _clearState,
          )
              
        ],
      ),
          ),
    );
  }
}