import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  int _totalScore = 0;
  final _questions = [
    {
      'question': 'What\'s your favorite type of food?',
      'answers': [
        {'answerText': 'Quinoa', 'answerScore': 5},
        {'answerText': 'Lentils', 'answerScore': 10},
        {'answerText': 'Brown rice', 'answerScore': 15},
      ]
    },
    {
      'question': 'What\'s your favorite temperature for weather?',
      'answers': [
        {'answerText': '70F', 'answerScore': 5},
        {'answerText': '80F', 'answerScore': 10},
        {'answerText': '90F', 'answerScore': 15},
      ]
    },
  ];

  // increment _answerScore based on answer selected
  // compute personality based on final _answerScore
  // Result
  // return personality type through if else statements and final _answerScore

  // Reset button
  // reset _answerScore to zero and quiz to first question

  void _answerQuestion(int scoreIncrement) {
    setState(() {
      _totalScore += scoreIncrement;
      _questionIndex < _questions.length
          ? _questionIndex += 1
          : _questionIndex = 0;
    });
  }

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My First App"),
            backgroundColor: Colors.red,
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questions: _questions,
                  questionIndex: _questionIndex)
              : Result(
                  totalScore: _totalScore,
                  restartQuiz: _restartQuiz,
                )), //,
      // backgroundColor: Colors.black,
    );
  }
}

// APPENDIX

// ElevatedButton(
//                 onPressed: () => print('Answer 1 chosen'),
//                 child: Text('Answer 1')),
//             ElevatedButton(
//                 onPressed: () {
//                   print('Answer 2...');
//                   print('...was chosen');
//                 },

// ElevatedButton(
//                 onPressed: _answerQuestion, child: Answer('Answer1')),
//             ElevatedButton(
//                 onPressed: _answerQuestion, child: Answer('Answer #2 ')),
//             ElevatedButton(
//                 onPressed: _answerQuestion, child: Answer('Answer3')),
