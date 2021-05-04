import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<
                Map<String,
                    Object>>) //questions[1]['key_value']: access the value givemn by keyvalue and then converts to list ...=>avoids nested listing
            .map((answer) {
          //.map always takes a function as parameter. here (answer) is an anonymus fuction with answer as parameter. map returns a iterable that is coverted in to list bu=y toList
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList() //to convert to toList
      ],
    );
  }
}
