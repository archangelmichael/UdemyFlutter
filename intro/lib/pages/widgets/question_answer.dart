import 'package:flutter/material.dart';

class QuestionAnswer extends StatelessWidget {
  final String _answerText;
  final VoidCallback _answerCallback;

  QuestionAnswer(this._answerText, this._answerCallback);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: RaisedButton(
        color: Colors.amber,
        child: Text(_answerText),
        onPressed: _answerCallback,
      ),
    );
  }
}
