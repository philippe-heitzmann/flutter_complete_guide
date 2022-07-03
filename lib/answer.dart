import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const Answer({Key? key}) : super(key: key);

  final String answerText;
  final VoidCallback answerQuestion;

  Answer(this.answerQuestion, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          // color: Colors.blue,
          child: Text(answerText, style: TextStyle(color: Colors.white)),
          onPressed: answerQuestion, //() => print('Answer chosen'),
          // style: ElevatedButton.styleFrom(
          //   fixedSize: Size.zero,
          //   padding: EdgeInsets.only(top: 10.0),
          //   tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          // )
        ));
  }
}
