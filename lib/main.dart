import "package:flutter/material.dart";

import './quiz.dart';
import './result.dart';
import 'result.dart';

// ./  means look in the same files in which the app is. If Question widget had _question then it could nnot be used in main or any other file
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionindex = 0;

  var _questions = const [
    {
      "questionText": "Which is the tallest bird of the world?",
      'answers': [
        {'text': 'Ostich', 'score': 10},
        {'text': 'Sparrow', 'score': 0},
        {'text': 'Crow', 'score': 0},
        {'text': 'hen', 'score': 0},
      ],
    },
    {
      "questionText": "What\'s the height of mount Everest?",
      'answers': [
        {'text': '8847m', 'score': 0},
        {'text': '8848m', 'score': 10},
        {'text': '8849m', 'score': 0},
        {'text': '8850m', 'score': 0},
      ],
    },
    {
      "questionText": "Who is the known as the first lady programmer",
      'answers': [
        {'text': 'Ada', 'score': 10},
        {'text': 'Ema', 'score': 0},
        {'text': 'Ele', 'score': 0},
        {'text': 'ava', 'score': 0},
      ],
    },
  ];
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(
      () {
        _questionindex += 1;
      },
    );
    print(_questionindex);
    if (_questionindex < _questions.length) {
      print("We have more questions");
    }
  }
  void _resetQuiz(){
   setState(() {
      _questionindex=0;
    _totalScore=0;
   });
   
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Welcome"),
        ),
        body: _questionindex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionindex)
            : result(_totalScore,_resetQuiz),
      ),
    );
  }
}

// class MyApp extends StatelessWidget{
//   var questionindex=0;

//   void answerQuestion(){
//     questionindex+=1;
//     print(questionindex);
//   }

//   @override
//   Widget build(BuildContext context){
//     var questions=[
//         'What is the tallest bird of the world??',
//         'Did you noticed the incorrect grammar??',
//     ];
//     return MaterialApp(home: Scaffold(
//       appBar: AppBar(title: Text("Welcome"),
//       ),
//       body: Column(
//         children: [
//           Text(questions[questionindex]),
//           RaisedButton(
//             child: Text("Answer 1"),
//             onPressed: answerQuestion,
//             ),
//             // onPressed: answerQuestion),
//           RaisedButton(
//             child: Text("Answer 2"),
//             onPressed: () => print("Answer for 2 is"),
//             ),
//             // onPressed: answerQuestion),
//           RaisedButton(
//             child: Text("Answer 3"),
//             onPressed: () => print("Answer for 3 is"),
//             ),
//             // onPressed: answerQuestion),
//           RaisedButton(
//             child: Text("Answer 4"),
//             onPressed: () => print("Answer for 4 is"),
//             ),
//             // onPressed: answerQuestion),
//         ],
//       ),
//     ),
//     );
//   }
// }
//onPressed takes function so we just give the function name . if we also give () then it will get executed simultaneously with onpressed
//() => print("Answer for 3 is"), is an anonymus function
