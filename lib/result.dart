
import 'dart:ui';

import 'package:flutter/material.dart';

class result extends StatelessWidget {
  final int TotalScore;
  final Function restetQuiz;

  result(this.TotalScore, this.restetQuiz);
  String get resultPhrase {
    String resulText = 'You did it';
    if (TotalScore == 30) {
      resulText = 'Full marks';
    } else if (TotalScore == 20) {
      resulText = '20 not bad';
    } else {
      resulText = 'too low to show';
    }
    return resulText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            child: Text('Retake Quiz'),
            textColor: Colors.blue,
            onPressed: restetQuiz,
          ),
        ],
      ),
    ); //Center is a widget that alligns everythin in center
  }
}
