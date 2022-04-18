import 'package:flutter/foundation.dart';


class Question {
  final String title;
  final List<Map> answers;

  Question({
    required this.title,
    required this.answers,
});

}


class QuestionData {
  final _data = [
    Question(title: 'Your 18 y.o. ?',
        answers: [
          {'answer' : 'Yes'},
          {'answer' : 'No'},
          {'anser' : 'maybe'},
          {'answer' : 'i dont know'}
        ]),
    Question(title: 'Youe liked anime?',
        answers: [
          {'answer' : 'Yes'},
          {'answer' : 'No'},
          {'answer' : 'maybe'},
          {'answer' : 'I am an anime character'},
        ]),
    Question(title: 'how many anime have you watched?',
        answers: [
          {'answer' : 'less than 10 anime'},
          {'answer' : 'less than 100 anime'},
          {'answer' : 'over than 100 anime'},
        ]),
  ];

  List <Question> get questions => [..._data];
}

