import 'package:intro/models/answer.dart';

class Question {
  String title;
  List<Answer> answers = [
    Answer("YES", 10),
    Answer("NO", 0),
    Answer("MAYBE", 5)
  ];

  Question(this.title);
}