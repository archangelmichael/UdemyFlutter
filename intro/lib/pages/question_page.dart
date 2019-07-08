import 'package:flutter/material.dart';
import 'package:intro/models/question.dart';
import 'package:intro/pages/widgets/question_column.dart';

class QuestionPage extends StatefulWidget {
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  final List<Question> _questions = [
    Question("WTF?"),
    Question("HTF?"),
    Question("WWTF?"),
  ];

  var _currentIndex = 0;
  var _hasModeQuestions = true;

  void _getNextQuestion() {
    var nextIndex = _currentIndex + 1;
    if (nextIndex >= _questions.length) {
      _hasModeQuestions = false;
      nextIndex = 0;
    }

    _currentIndex = nextIndex;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var selectedQuestion = _questions[_currentIndex];

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Questions Page"),
      ),
      body: _hasModeQuestions
          ? QuestionColumn(selectedQuestion, _getNextQuestion)
          : Center(
              child: Text("GAME OVER"),
            ),
    );
  }
}
