import 'package:flutter/material.dart';
import 'package:intro/models/answer.dart';

typedef void AnswerCallBack(int score);

class QuestionAnswer extends StatelessWidget {
  final Answer _answer;
  final AnswerCallBack _answerCallback;

  QuestionAnswer(this._answer, this._answerCallback);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: RaisedButton(
        color: Colors.amber,
        child: Text(_answer.title),
        onPressed: () => _answerCallback(_answer.points),
      ),
    );
  }
}
