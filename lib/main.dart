import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer chosen!!');
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
        body: Row(
          children: [
            Text('The question!!!'),
            ElevatedButton(
              child: Text('Answer1'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text('Answer2'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text('Answer3'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
