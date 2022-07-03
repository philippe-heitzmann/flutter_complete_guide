import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  // const Quiz({Key? key}) : super(key: key);
  final Function answerQuestion;
  final List<Map<String, Object>> questions;
  final int questionIndex;

  // Quiz(this._answerQuestion, this.questions, this._questionIndex);

  Quiz(
      {required this.answerQuestion,
      required this.questions,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question((questions[questionIndex]['question'] as String)),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['answerScore']),
              (answer['answerText'] as String));
        }).toList(),
        // RaisedButton(onPressed: null, child: Text('Answer 1')),
      ],
    );
  }
}
