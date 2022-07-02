import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const Answer({Key? key}) : super(key: key);

  final String answer;
  final VoidCallback selectHandler;

  Answer(this.selectHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          // color: Colors.blue,
          child: Text(answer, style: TextStyle(color: Colors.white)),
          onPressed: selectHandler, //() => print('Answer chosen'),
        ));
  }
}
