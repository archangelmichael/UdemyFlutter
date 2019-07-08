import 'package:flutter/material.dart';
import 'package:intro/models/question.dart';
import 'package:intro/pages/widgets/question_column.dart';
import 'package:intro/pages/widgets/questions_result.dart';

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
  var _totalScore = 0;

  void _getNextQuestion(int score) {
    _totalScore += score;

    var nextIndex = _currentIndex + 1;
    if (nextIndex >= _questions.length) {
      _hasModeQuestions = false;
      nextIndex = 0;
    }

    _currentIndex = nextIndex;
    setState(() {});
  }

  void _resetQuestions() {
    _totalScore = 0;
    _hasModeQuestions = true;
    _currentIndex = 0;
    setState(() { });
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
          : QuestionsResult(_totalScore, _resetQuestions),
    );
  }
}
