import 'package:flutter/material.dart';
import 'package:intro/models/question.dart';
import 'package:intro/pages/widgets/question_answer.dart';
import 'package:intro/pages/widgets/question_title.dart';

class QuestionColumn extends StatelessWidget {
  final Question _question;
  final Function _callback;

  QuestionColumn(this._question, this._callback);

  @override
  Widget build(BuildContext context) {
    return Column(
              children: <Widget>[
                QuestionTitle(_question.title),
                ..._question.answers.map((answer) {
                  return QuestionAnswer(answer, _callback);
                })
              ],
            );
  }
}