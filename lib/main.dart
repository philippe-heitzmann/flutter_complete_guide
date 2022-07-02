import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
import './quiz.dart';

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
  final questions = [
    {
      'question': 'What\'s your favorite type of food?',
      'answers': ['Quinoa', 'Lentils', 'Brown rice']
    },
    {
      'question': 'What\'s your favorite temperature for weather?',
      'answers': ['70F', '80F', '90F']
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex < questions.length
          ? _questionIndex += 1
          : _questionIndex = 0;
    });
    // if (_questionIndex < questions.length) {
    //   print('True');
    // } else {
    //   setState(() {
    //     _questionIndex = 0;
    //   });
    // }
    // print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
          backgroundColor: Colors.red,
        ),
        body: _questionIndex < questions.length
            ? Quiz(_answerQuestion, questions, _questionIndex)
            : Center(child: Text('You did it!!')), //,
        // backgroundColor: Colors.black,
      ),
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