import 'package:flutter/material.dart';
import 'package:quizzflutterproject/models/qeustion.dart';
import 'package:quizzflutterproject/widgets/answers.dart';
import 'package:quizzflutterproject/widgets/progress_bar.dart';


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

          Container(
            padding: const EdgeInsets.all(10.0),
            child: Text (
                data.questions[_questionIndex].title,
              style: Theme.of(context).textTheme.caption,
            ),
          ),

        ...data.questions[_questionIndex].answers.map(
            (value) => Answer(
              title: value['answer'],
              onChangeAnswer: _onChangeAnswer,
              isCorrect: value.containsKey('isCorrect') ? true : false)
        ).toList(),

        ],
      ),
          ),
    );
  }
}