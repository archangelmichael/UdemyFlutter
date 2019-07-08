import 'package:flutter/material.dart';
import 'package:intro/pages/widgets/question_title.dart';

class QuestionPage extends StatefulWidget {
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  final List<String> _questions = ["WTF?", "HTF?", "WWTF?"];

  var _currentIndex = 0;

  void _getNextQuestion() {
    var nextIndex = _currentIndex + 1;
    if (nextIndex >= _questions.length) {
      nextIndex = 0;
    }

    _currentIndex = nextIndex;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Questions Page"),
      ),
      body: Column(
        children: <Widget>[
          QuestionTitle(_questions[_currentIndex]),
          RaisedButton(
            child: Text("TRUE"),
            onPressed: () {
              print("OK");
              _getNextQuestion();
            },
          ),
          RaisedButton(
            child: Text("FALSE"),
            onPressed: () {
              print("NOT OK");
            },
          )
        ],
      ),
    );
  }
}
