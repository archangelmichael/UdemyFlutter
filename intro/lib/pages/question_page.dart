import 'package:flutter/material.dart';
import 'package:intro/pages/widgets/question_title.dart';

class QuestionPage extends StatefulWidget {
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Questions Page"),
      ),
      body: Column(children: <Widget>[
        QuestionTitle("OFF"),
        RaisedButton(child: Text("TRUE"), onPressed: () { print("OK"); },),
        RaisedButton(child: Text("FALSE"), onPressed: () { print("NOT OK"); },)
      ],),
    );
  }
}
