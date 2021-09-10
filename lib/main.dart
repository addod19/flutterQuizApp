import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
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
            Text(questions[questionIndex]),
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
