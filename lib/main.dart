import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your fav color?',
      'Whats\s your fav programming language?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first flutter App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            ElevatedButton(
              child: Text('Answer1'),
              onPressed: _answerQuestion,
            ),
            ElevatedButton(
              child: Text('Answer2'),
              onPressed: _answerQuestion,
            ),
            ElevatedButton(
              child: Text('Answer3'),
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
