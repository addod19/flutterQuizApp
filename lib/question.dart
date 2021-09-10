import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText;

  Question(this.questionText); // postionional arguments

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
