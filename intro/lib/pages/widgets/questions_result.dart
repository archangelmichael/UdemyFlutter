import 'package:flutter/material.dart';

class QuestionsResult extends StatelessWidget {
  final int _score;
  final Function _resetCallback;

  QuestionsResult(this._score, this._resetCallback);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Text(
            "GAME OVER \n Your score is $_score",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          width: double.infinity,
          padding: const EdgeInsets.all(20),
        ),
        RaisedButton(
          child: Text(
            "RESTART",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          color: Colors.teal,
          onPressed: _resetCallback,
        )
      ],
    );
  }
}
