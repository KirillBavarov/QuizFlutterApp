import 'package:flutter/material.dart';
import 'answers.dart';


class Quiz extends StatelessWidget {

  final index;
  final qustionData;
  final onChangeAnswer;

  Quiz({Key? key,
    this.index,
    this.qustionData,
    this.onChangeAnswer
  }) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
children: <Widget> [
  Container(
    padding: const EdgeInsets.all(10.0),
    child: Text (
      qustionData.questions[index].title,
      style: Theme.of(context).textTheme.caption,
    ),
  ),

  ...qustionData.questions[index].answers.map(
          (value) => Answer(
          title: value['answer'],
          onChangeAnswer: onChangeAnswer,
          isCorrect: value.containsKey('isCorrect') ? true : false)
  ).toList(),
],
    );
  }
}