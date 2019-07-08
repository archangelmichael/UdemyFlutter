import 'package:flutter/material.dart';

class QuestionTitle extends StatelessWidget {
  final String questionText;

  QuestionTitle(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(this.questionText,);
  }
}