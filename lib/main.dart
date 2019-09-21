import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQues() {
    setState(() {
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);
    // print('Answer Chossen!!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite Color?',
      'What\'s your Favourite Animal?',
      'What\'s your Favourite Animal1?',
      'What\'s your Favourite Animal2?',
      'What\'s your Favourite Animal3?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Ans1'),
              onPressed: answerQues,
            ),
            RaisedButton(
              child: Text('Ans2'),
              onPressed: answerQues,
            ),
            RaisedButton(
              child: Text('Ans3'),
              onPressed: answerQues,
            ),
            RaisedButton(
              child: Text('Ans4'),
              onPressed: answerQues,
            ),
          ],
        ),
      ),
    );
  }
}
