import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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

  void _answerQuestion() {
    setState(() {
      _questionIndex = (_questionIndex < 1) ? 1 : 0;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'question': 'What\'s your favorite type of food?',
        'answers': ['Quinoa', 'Lentils', 'Brown rice']
      },
      {
        'question': 'What\'s your favorite temperature for weather?',
        'answers': ['70F', '80F', '90F']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
          backgroundColor: Colors.red,
        ),
        body: Column(
          children: <Widget>[
            Question((questions[_questionIndex]['question'] as String)),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList(),
            // RaisedButton(onPressed: null, child: Text('Answer 1')),
          ],
        ),
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