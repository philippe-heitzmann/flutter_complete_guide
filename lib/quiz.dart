import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  // const Quiz({Key? key}) : super(key: key);
  final VoidCallback selectHandler;
  final questions;
  final _questionIndex;

  Quiz(this.selectHandler, this.questions, this._questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question((questions[_questionIndex]['question'] as String)),
        ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(selectHandler, answer);
        }).toList(),
        // RaisedButton(onPressed: null, child: Text('Answer 1')),
      ],
    );
  }
}
