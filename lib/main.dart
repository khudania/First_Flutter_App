import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQues() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
    // print('Answer Chossen!!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
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

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            Answer(_answerQues),
            Answer(_answerQues),
            Answer(_answerQues),
          ],
        ),
      ),
    );
  }
}
