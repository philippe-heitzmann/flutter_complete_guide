import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // const Question({Key? key}) : super(key: key);

  final String questionText;

  //constructor
  Question(this.questionText); // print('Updated Question Widget')

  //constructor
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(20),
        child: Text(
          questionText,
          style: TextStyle(fontSize: 32),
          textAlign: TextAlign.center,
        ));
  }
}
