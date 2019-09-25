import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite Color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 6},
        {'text': 'Green', 'score': 2},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your Favourite Animal?',
      'answers': [
        {'text': 'Lion', 'score': 10},
        {'text': 'Tiger', 'score': 6},
        {'text': 'Elephant', 'score': 2},
        {'text': 'Horse', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your Favourite Place?',
      'answers': [
        {'text': 'Delhi', 'score': 10},
        {'text': 'Mumbai', 'score': 6},
        {'text': 'Bangalore', 'score': 2},
        {'text': 'Kolkata', 'score': 1}
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQues(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
    // print('Answer Chossen!!');

    if (_questionIndex < _questions.length) {
      print('We have more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQues: _answerQues,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
