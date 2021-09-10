import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
              onPressed: null,
            ),
            ElevatedButton(
              child: Text('Answer2'),
              onPressed: null,
            ),
            ElevatedButton(
              child: Text('Answer3'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
