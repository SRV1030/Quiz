import 'package:flutter/material.dart';


class Answer extends StatelessWidget {
  final Function selecthandler;
  final String answerText;
  Answer(this.selecthandler, this.answerText);
  //we created a function parameter in constructor to accept the function _answerquestion fron main.dart
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.amberAccent[200],
        textColor: Colors.black,
        child: Text(answerText),
        onPressed: selecthandler ,
      ),
    );
  }
}