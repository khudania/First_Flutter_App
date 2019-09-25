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
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your Favourite Animal?',
      'answers': ['Lion', 'Tiger', 'Elephant', 'Horse'],
    },
    {
      'questionText': 'What\'s your Favourite Place?',
      'answers': ['Delhi', 'Mumbai', 'Bangalore', 'Kolkata'],
    },
  ];

  var _questionIndex = 0;

  void _answerQues() {
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
