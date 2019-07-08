import 'package:flutter/material.dart';

class QuestionTitle extends StatelessWidget {
  final String _questionText;

  QuestionTitle(this._questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(20),
      child: Text(this._questionText,
      style: TextStyle(fontSize: 28),
      textAlign: TextAlign.center,),
    );
  }
}