import 'package:flutter/material.dart';

class ResultText extends StatelessWidget {
  final int _score;

  ResultText(this._score);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "GAME OVER \n Your score is $_score",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
